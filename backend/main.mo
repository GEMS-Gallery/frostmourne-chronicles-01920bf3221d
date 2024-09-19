import Nat "mo:base/Nat";
import Order "mo:base/Order";
import Text "mo:base/Text";

import Array "mo:base/Array";
import Iter "mo:base/Iter";

actor {
  // Define the structure for a chapter
  type Chapter = {
    title: Text;
    content: Text;
  };

  // Store the story chapters
  let chapters: [Chapter] = [
    { title = "Birth and Early Years";
      content = "Arthas Menethil was born to King Terenas Menethil II and Queen Lianne Menethil, heir to the throne of Lordaeron. As a young prince, he was trained in combat by Muradin Bronzebeard and in the ways of the Light by Uther the Lightbringer." },
    { title = "The Silver Hand";
      content = "At the age of 19, Arthas was inducted into the Order of the Silver Hand, becoming a paladin. He served Lordaeron with distinction, defending it against trolls and orcs." },
    { title = "The Scourge of Lordaeron";
      content = "When the plague of undeath began spreading through Lordaeron, Arthas took increasingly desperate measures to stop it, culminating in the culling of Stratholme." },
    { title = "Northrend and Frostmourne";
      content = "Pursuing the dreadlord Mal'Ganis to Northrend, Arthas discovered and claimed the runeblade Frostmourne, sacrificing his soul and sanity in the process." },
    { title = "Fall of Lordaeron";
      content = "Returning to Lordaeron as a death knight, Arthas murdered his father and unleashed the Scourge upon his homeland, destroying the kingdom he once sought to protect." },
    { title = "Rise of the Lich King";
      content = "Arthas traveled to Northrend and merged with the spirit of Ner'zhul, becoming the new Lich King. He ruled over the Scourge for years, threatening all of Azeroth." },
    { title = "Wrath of the Lich King";
      content = "Arthas launched a massive assault on Azeroth, leading to a united counterattack by the Alliance and Horde. This culminated in the siege of Icecrown Citadel." },
    { title = "The Fall of Arthas";
      content = "After a grueling battle atop Icecrown Citadel, Arthas was defeated. In his final moments, he saw a vision of his father, finding a moment of redemption before his death." }
  ];

  // Query function to get all chapters
  public query func getChapters() : async [Chapter] {
    chapters
  };

  // Query function to get a specific chapter
  public query func getChapter(index: Nat) : async ?Chapter {
    if (index < chapters.size()) {
      ?chapters[index]
    } else {
      null
    }
  };
}
