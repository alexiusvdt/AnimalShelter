namespace AnimalShelter.Models
{
  public class Animal
  {
    public int AnimalId { get; set; }
    public string Name { get; set; }
    public string Type { get; set; }
    public string Breed { get; set; }
    public string EntryDate { get; set; }
    public string AdoptDate { get; set; }
    
  }

  // public date adoptionDate()
  // {
  //   //querry Adoption tabel for AnimalId
  //   //if empty return null
  //   //return date
  // }
}