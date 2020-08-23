class RecentWork {
  final String image, category, title,link;
  final int id;


  RecentWork({this.id, this.image, this.category, this.title,this.link});
}

// Demo List of my works
List<RecentWork> recentWorks = [
  RecentWork(
    id: 1,
    title: "University: CBSE\n\nCGPA: 9.4",
    category: "High School",
    image: "assets/sunflower.png",
    link: 'https://drive.google.com/file/d/1aNCFAmiT9FryluCXBA6XwrP5G4ylsjGi/view?usp=sharing',
  ),
  RecentWork(
    id: 2,
    title: "University: CBSE\n\nPercentage: 93.4%",
    category: "Intermediate",
    image: "assets/sumeet.jpg",
    link: 'https://drive.google.com/file/d/18_7j0F9Lq7vBdoEFD2NMg5iYaUG7kTXO/view?usp=sharing',
  ),
  RecentWork(
    id: 3,
    title: "University: Banasthali University\n\nCGPA: 8.53",
    category: "BTech (C.S.)",
    image: "assets/banasthali.png",
    link: 'https://drive.google.com/file/d/1PdKyN1VuzbHbGMdr3fQ1jWwRHkibPupP/view?usp=sharing',
  ),
];
