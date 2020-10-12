class Ticketing {
  final String name;
  final String id;
  final String case_reason;
  final String date;
  
  Ticketing(this.name, this.id, this.case_reason, this.date);
  
  static List<Ticketing> getTicketing() {
    return <Ticketing>[
      Ticketing("Lutfi Ardiansyah", "0001", "Tidak bisa cetak resi", "21 December 2019"),
      Ticketing("Lutfi Ardiansyah", "0002", "EDC TIDAK BISA ONLINE", "02 January 2020"),
    ]; 
  }
}