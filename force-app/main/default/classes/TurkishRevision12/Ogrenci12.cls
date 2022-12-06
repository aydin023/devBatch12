public  class Ogrenci12 {

    public static list<ogrenci12> students;
    public static integer ogrenciSayisi=0;
    public string firstName;
    public string lastName;
    private string schoolName = ' dream School';
    public string className;
    public boolean art;
    public boolean sport;
    public integer ingGrade;
    public integer mathGrade;
    public integer fenGrade;

    public Ogrenci12(){
        System.debug('Yeni bir kayit oldu. Hayirli olsun.. ');
        ogrenciSayisi++;
    }

    public Ogrenci12(String fName, String lName, String cName, Boolean ar){
        this();
        ogrenci12 s = new Ogrenci12();
        this.firstName = fName;
        this.lastName = lName;
        this.className=cName;
        this.art = ar;
        students.add(s);
    }


    public void message(){
        System.debug(firstName + ' okulumuzun' + ogrenciSayisi + ' ogrencisi olarak kayd oldu');
    }
    
}
