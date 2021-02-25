package rc4crypt.utility;

//spesifikasi program
//program menerima input berupa plainteks ataupun file
//program mengenkripsi plainteks ke dalam format hexadecimal
//program hanya bisa mendekprisi plainteks hexadecimal

public class RC4 {
    //atribut
    private final int[] S;
    private int len; //panjang plainteks
    public String errorMessage = null;

    //konstruktor
    public RC4(String input_key){
        //menyimpan input_key ke dalam array of integer
        byte[] temp_key = input_key.getBytes();
        
        //----------------------------MODIFIKASI--------------------------------
        //Gunakan LFSR untuk men-generate keystream bit acak dengan panjang 
        //sesuai key dengan periode 15.
        //keystream LFSR akan di-XOR-kan dengan key.
        //inisialisasi LFSR dengan 4 bit awal adalah 1 0 1 1
        //sehingga pada array, lfsr[0] merepresentasikan bit ke-4
        //dan lfsr[3] merepresentasikan bit ke-1 pada register geser
        byte[] lfsr = new byte[4];    
        lfsr[0] = (byte) 1;
        lfsr[1] = (byte) 0;
        lfsr[2] = (byte) 1;
        lfsr[3] = (byte) 1;
        for (int idx = 0; idx < input_key.length(); idx++) {
            temp_key[idx] ^= lfsr[3];
            byte t = lfsr[3];
            lfsr[3] = lfsr[2];
            lfsr[2] = lfsr[1];
            lfsr[1] = lfsr[0];
            lfsr[0] ^= t;
        }
        //---------------------------END MODIFIKASI-----------------------------

        int[] key = new int[input_key.length()];
        for (int i = 0; i < input_key.length(); i++) {
            key[i] = (int) temp_key[i];
        }

        //Key-scheduling algorithm
        int[] S = new int[256];
        for (int i = 0; i < 256; i++) {
            S[i] = i;
        }
        int j = 0;
        for (int i = 0; i < 256; i++) {
            j = (j + S[i] + key[i % input_key.length()]) % 256;
            //swap
            int temp = S[i];
            S[i] = S[j];
            S[j] = temp;
        }
        this.S = S;
        this.len = 0;
    }

    //method
    //method enkripsi
    public String encrypt(String plaintext) {
        byte[] temp_pt = plaintext.getBytes();
        int[] pt = new int[plaintext.length()];
        for (int i = 0; i < plaintext.length(); i++) {
            pt[i] = (int) temp_pt[i];
        }
        this.len = plaintext.length();
        //inisialisasi cipherteks dalam bentuk array of int
        int[] ct = new int[plaintext.length()];

        //Pseudo-random generation algorithm
        int i = 0;
        int j = 0;
        for (int idx = 0; idx < this.len; idx ++) {
            i = (i + 1) % 256;
            j = (j + S[i]) % 256;
            //swap
            int temp = S[i];
            S[i] = S[j];
            S[j] = temp;
            int t = (S[i] + S[j]) % 256;
            int keystream = S[t];
            
            ct[idx] = (keystream ^ pt[idx]);
        }

        StringBuilder sb = new StringBuilder();
        //return as hex
        for (int idx : ct) {
            sb.append(String.format("%02x", idx));
        }
        
        return (sb.toString());
    }

    //method dekripsi
    public String decrypt(String ciphertext) throws NumberFormatException {
        //decode ciphertext dari hex menjadi array of int
        int[] ct = new int[ciphertext.length()];
        int n = 0;
        try {
            for (int idx = 0; idx < ciphertext.length(); idx += 2) {
                String hex = ciphertext.substring(idx, idx + 2);
                ct[n] = Integer.parseInt(hex,16);
                n += 1;
            }
            this.len = n;
        }    
        catch(NumberFormatException e) {
            errorMessage = "Plaintext contains non-hexadecimal characters thus undecryptable";
            return null;
        }

        //inisialisasi plainteks dalam bentuk array of int
        int[] pt = new int[len];

        //Pseudo-random generation algorithm
        int i = 0;
        int j = 0;
        for (int idx = 0; idx < this.len; idx ++) {
            i = (i + 1) % 256;
            j = (j + S[i]) % 256;
            //swap
            int temp = S[i];
            S[i] = S[j];
            S[j] = temp;
            int t = (S[i] + S[j]) % 256;
            int keystream = S[t];
            pt[idx] = (keystream ^ ct[idx]);
        }
        StringBuilder sb = new StringBuilder();
        //return as plaintext
        for (int idx = 0; idx < this.len; idx++) {
            sb.append(((char) pt[idx]));
        }
        // return chipertext;
        return(sb.toString());
    }
}
