

import Foundation

struct HarryPotterCharacter {
    let name: String
    let image: String
    let summary: String
    let credits: [String]
    let quotes: [String]
}

// Define instances for each character

let harryPotter = HarryPotterCharacter(
    name: "Harry Potter",
    image: "harry_potter_image",
    summary: "Harry James Potter is the titular character and the main protagonist of the Harry Potter series. He is known for surviving an attack by the dark wizard Voldemort as a baby and for his distinctive lightning bolt scar on his forehead.",
    credits: [
        "⚡️ Defeating Lord Voldemort",
        "🔮 Becoming an Auror",
        "📜 Leading Dumbledore's Army",
        "🦉 Rescuing Sirius Black"
    ],
    quotes: [
        "Expecto Patronum!",
        "I solemnly swear that I am up to no good.",
        "I’ll be in my bedroom, making no noise and pretending I’m not there.",
        "Every great wizard in history has started out as nothing more than what we are now, students. If they can do it, why not us?"
    ]
)

let hermioneGranger = HarryPotterCharacter(
    name: "Hermione Granger",
    image: "hermione_granger_image",
    summary: "Hermione Jean Granger is one of Harry's best friends and is known for her intelligence, loyalty, and exceptional magical abilities. She is a Muggle-born witch and a key member of the trio that fights against dark forces.",
    credits: [
        "📚 Founding S.P.E.W. (Society for the Promotion of Elfish Welfare)",
        "🐍 Helping to defeat the Basilisk",
        "⏳ Mastering Time-Turner",
        "🎩 Becoming Minister for Magic"
    ],
    quotes: [
        "When in doubt, go to the library.",
        "It's Wingardium Leviosa, not Leviosar!",
        "I hope you're pleased with yourselves. We could all have been killed - or worse, expelled.",
        "Books! And cleverness! There are more important things - friendship and bravery."
    ]
)

let ronWeasley = HarryPotterCharacter(
    name: "Ron Weasley",
    image: "ron_weasley_image",
    summary: "Ronald Bilius Weasley is Harry's loyal and humorous best friend. He comes from a large and loving wizarding family and is known for his bravery, even in the face of danger.",
    credits: [
        "🦁 Destroying Slytherin's locket",
        "♟️ Winning a game of Wizard Chess",
        "🔮 Becoming an Auror",
        "🐉 Helping Harry in the Triwizard Tournament"
    ],
    quotes: [
        "Happiness can be found even in the darkest of times if one only remembers to turn on the light.",
        "It's not much, but it's home.",
        "You know, it's cruel that I got to spend so much time with Mum and Dad and you guys didn't.",
        "I am not worried, Harry. I am with you.",
    ]
)

let albusDumbledore = HarryPotterCharacter(
    name: "Albus Dumbledore",
    image: "albus_dumbledore_image",
    summary: "Albus Percival Wulfric Brian Dumbledore is one of the most powerful wizards in history and serves as the headmaster of Hogwarts School of Witchcraft and Wizardry. He is known for his wisdom and leadership in the fight against Voldemort.",
    credits: [
        "🌟 Defeating Grindelwald",
        "🐉 Discovering the twelve uses of dragon's blood",
        "🔥 Establishing the Order of the Phoenix",
        "🧙‍♂️ Mentoring Harry Potter"
    ],
    quotes: [
        "Happiness can be found even in the darkest of times if one only remembers to turn on the light.",
        "Do not pity the dead, Harry. Pity the living, and above all, those who live without love.",
        "Words are, in my not-so-humble opinion, our most inexhaustible source of magic.",
        "To the well-organized mind, death is but the next great adventure."
    ]
)

let severusSnape = HarryPotterCharacter(
    name: "Severus Snape",
    image: "severus_snape_image",
    summary: "Severus Snape is a complex character in the Harry Potter series. He is a skilled wizard and serves as the Potions Master at Hogwarts. His loyalty and motives are often a subject of debate, but he plays a crucial role in the fight against Voldemort.",
    credits: [
        "🐍 Protecting Harry Potter secretly",
        "📜 Supplying information to the Order of the Phoenix",
        "🗡️ Killing Albus Dumbledore to protect Draco Malfoy",
        "🔚 Ultimately, helping to defeat Voldemort"
    ],
    quotes: [
        "Love is the most powerful form of magic.",
        "Sometimes, we must choose between what is right and what is easy.",
        "Words are our most inexhaustible source of magic.",
        "It takes a great deal of bravery to stand up to our enemies, but just as much to stand up to our friends."
    ]
)

let siriusBlack = HarryPotterCharacter(
    name: "Sirius Black",
    image: "sirius_black_image",
    summary: "Sirius Orion Black, also known as Padfoot, is Harry Potter's godfather and a member of the Order of the Phoenix. He was wrongly imprisoned in Azkaban for a crime he did not commit and is known for his rebellious nature and loyalty to his friends.",
    credits: [
        "🐺 Escaping from Azkaban",
        "🐀 Helping to reveal Peter Pettigrew's true identity",
        "👥 Protecting Harry and his friends",
        "⚔️ Fighting alongside the Order of the Phoenix"
    ],
    quotes: [
        "The world's not split into good people and Death Eaters.",
        "I'm not going to be murdered. I'm going to Azkaban.",
        "We've all got both light and dark inside us. What matters is the part we choose to act on. That's who we really are.",
        "If you want to know what a man's like, take a good look at how he treats his inferiors, not his equals."
    ]
)



class HarryPotterCharactersState : ObservableObject {
    static let shared = HarryPotterCharactersState()
    
    @Published var currentCharacter: HarryPotterCharacter = hermioneGranger
    
    let characters: [HarryPotterCharacter] = [
        harryPotter, hermioneGranger, ronWeasley, albusDumbledore, siriusBlack, severusSnape]
    
    func setCurrentCharacter(to character: HarryPotterCharacter) -> Void {
        self.currentCharacter = character
    }
    
    func allCharacters() -> [HarryPotterCharacter] {
        return characters
    }
}
