import 'package:first_app/models/question.dart';

// ignore: non_constant_identifier_names
Map<QuestionType, List<Question>> QUESTIONS_DATA = {
  QuestionType.random: [
    Question(
        text: "Which metal is liquid at room temperature?",
        options: ["Mercury", "Gold", "Iron", "Copper"]),
    Question(
        text: "What is the capital city of France?",
        options: ["Paris", "London", "Rome", "Berlin"]),
    Question(text: "Who discovered the theory of relativity?", options: [
      "Albert Einstein",
      "Isaac Newton",
      "Stephen Hawking",
      "Galileo Galilei"
    ]),
    Question(
        text: "Which gas do plants primarily use for photosynthesis?",
        options: ["Carbon dioxide", "Oxygen", "Nitrogen", "Hydrogen"]),
    Question(
        text: "Which mammal lays eggs?",
        options: ["Platypus", "Dog", "Cat", "Elephant"]),
    Question(
        text: "What is the tallest mammal?",
        options: ["Giraffe", "Elephant", "Hippopotamus", "Rhino"]),
    Question(text: "Who painted the Mona Lisa?", options: [
      "Leonardo da Vinci",
      "Pablo Picasso",
      "Vincent van Gogh",
      "Michelangelo"
    ]),
    Question(
        text: "Which country is famous for the Great Wall?",
        options: ["China", "India", "Japan", "Brazil"]),
    Question(
        text: "What is the chemical symbol for gold?",
        options: ["Au", "Ag", "Fe", "Cu"]),
    Question(text: "Who is known as the father of modern physics?", options: [
      "Albert Einstein",
      "Galileo Galilei",
      "Isaac Newton",
      "Nikola Tesla"
    ]),
    Question(
        text: "What is the largest ocean in the world?",
        options: ["Pacific", "Atlantic", "Indian", "Arctic"]),
    Question(text: "Who wrote 'Romeo and Juliet'?", options: [
      "William Shakespeare",
      "Jane Austen",
      "Charles Dickens",
      "Mark Twain"
    ]),
    Question(
        text: "What is the capital city of Japan?",
        options: ["Tokyo", "Beijing", "Seoul", "Bangkok"]),
    Question(
        text: "What is the chemical symbol for water?",
        options: ["H2O", "CO2", "NaCl", "O2"]),
    Question(text: "Who invented the telephone?", options: [
      "Alexander Graham Bell",
      "Thomas Edison",
      "Nikola Tesla",
      "Guglielmo Marconi"
    ])
  ],
  QuestionType.sports: [
    Question(
        text: "Who won the FIFA World Cup in 2018?",
        options: ["France", "Croatia", "Brazil", "Germany"]),
    Question(
        text: "Which country has won the most Olympic gold medals?",
        options: ["United States", "China", "Russia", "Germany"]),
    Question(
        text: "In which sport do competitors use a bow to shoot arrows?",
        options: ["Archery", "Fencing", "Sailing", "Table Tennis"]),
    Question(text: "Who is known as the 'King of Clay' in tennis?", options: [
      "Rafael Nadal",
      "Roger Federer",
      "Novak Djokovic",
      "Andy Murray"
    ]),
    Question(
        text: "What is the national sport of Japan?",
        options: ["Sumo wrestling", "Karate", "Judo", "Kendo"]),
    Question(text: "Which boxer is known as 'The Greatest'?", options: [
      "Muhammad Ali",
      "Mike Tyson",
      "Floyd Mayweather Jr.",
      "Manny Pacquiao"
    ]),
    Question(
        text:
            "Which Formula 1 driver holds the record for the most World Championships?",
        options: [
          "Lewis Hamilton",
          "Michael Schumacher",
          "Sebastian Vettel",
          "Ayrton Senna"
        ]),
    Question(
        text: "Who won the NBA MVP award for the 2020-2021 season?",
        options: [
          "Nikola Jokić",
          "LeBron James",
          "Giannis Antetokounmpo",
          "Stephen Curry"
        ]),
    Question(
        text: "Which country is the birthplace of cricket?",
        options: ["England", "Australia", "India", "South Africa"]),
    Question(
        text: "In which sport is the term 'home run' used?",
        options: ["Baseball", "Football", "Tennis", "Golf"]),
  ],
  QuestionType.astronomy: [
    Question(
        text: "What is the closest planet to the Sun?",
        options: ["Mercury", "Venus", "Earth", "Mars"]),
    Question(
        text: "What is the largest planet in our solar system?",
        options: ["Jupiter", "Saturn", "Uranus", "Neptune"]),
    Question(
        text: "What is the brightest star in the night sky?",
        options: ["Sirius", "Polaris", "Vega", "Betelgeuse"]),
    Question(
        text: "What is the name of the galaxy that contains our solar system?",
        options: ["Milky Way", "Andromeda", "Triangulum", "Orion"]),
    Question(
        text:
            "What is the phenomenon where the moon partially or completely blocks the Sun?",
        options: ["Solar eclipse", "Lunar eclipse", "Aurora", "Comet"]),
    Question(
        text:
            "What is the name of the first man-made satellite launched into space?",
        options: ["Sputnik 1", "Explorer 1", "Vanguard 1", "Telstar 1"]),
    Question(
        text:
            "What is the term for a group of stars forming a recognizable pattern?",
        options: ["Constellation", "Galaxy", "Nebula", "Black hole"]),
    Question(
        text: "What is the name of the largest moon of Jupiter?",
        options: ["Ganymede", "Io", "Europa", "Callisto"]),
    Question(
        text:
            "What is the name of the region in space where gravitational forces are so strong that nothing, not even light, can escape?",
        options: ["Black hole", "Quasar", "Pulsar", "Neutron star"]),
    Question(
        text:
            "What is the name of the dwarf planet discovered in 2005 beyond Pluto?",
        options: ["Eris", "Haumea", "Makemake", "Sedna"]),
  ],
  QuestionType.math: [
    Question(
        text: "What is the value of π (pi) rounded to two decimal places?",
        options: ["3.14", "3.12", "3.16", "3.18"]),
    Question(
        text: "What is the square root of 64?",
        options: ["8", "6", "10", "12"]),
    Question(
        text: "What is the sum of the angles in a triangle?",
        options: ["180 degrees", "90 degrees", "270 degrees", "360 degrees"]),
    Question(
        text: "What is the formula to find the area of a rectangle?",
        options: ["Length × Width", "πr²", "1/2 × Base × Height", "πd"]),
    Question(
        text: "What is the value of 5! (5 factorial)?",
        options: ["120", "25", "60", "720"]),
    Question(
        text:
            "What is the term for a number that can only be divided by 1 and itself?",
        options: [
          "Prime number",
          "Odd number",
          "Even number",
          "Composite number"
        ]),
    Question(
        text: "What is the equation of a line in slope-intercept form?",
        options: [
          "y = mx + b",
          "ax² + bx + c = 0",
          "y - y₁ = m(x - x₁)",
          "y = a(x - h)² + k"
        ]),
    Question(
        text:
            "What is the term for the ratio of the circumference of a circle to its diameter?",
        options: ["π (pi)", "e (Euler's number)", "φ (phi)", "δ (delta)"]),
    Question(
        text: "What is the value of 2³ (2 raised to the power of 3)?",
        options: ["8", "6", "10", "12"]),
    Question(
        text:
            "What is the term for a number that can be expressed as the ratio of two integers?",
        options: [
          "Rational number",
          "Irrational number",
          "Real number",
          "Complex number"
        ]),
  ],
  QuestionType.history: [
    Question(
        text: "Who was the first President of the United States?",
        options: [
          "George Washington",
          "Thomas Jefferson",
          "Abraham Lincoln",
          "John Adams"
        ]),
    Question(
        text: "In which year did World War II end?",
        options: ["1945", "1939", "1941", "1943"]),
    Question(
        text: "Who was the last ruler of the Roman Empire?",
        options: ["Romulus Augustulus", "Julius Caesar", "Augustus", "Nero"]),
    Question(
        text:
            "What was the name of the ship that Christopher Columbus sailed to the Americas in 1492?",
        options: ["Santa Maria", "Nina", "Pinta", "Mayflower"]),
    Question(
        text: "Which ancient civilization built the pyramids in Egypt?",
        options: ["Ancient Egyptians", "Mesopotamians", "Greeks", "Romans"]),
    Question(text: "Who wrote 'The Communist Manifesto'?", options: [
      "Karl Marx",
      "Friedrich Engels",
      "Vladimir Lenin",
      "Joseph Stalin"
    ]),
    Question(
        text: "What year did the Titanic sink?",
        options: ["1912", "1908", "1915", "1920"]),
    Question(
        text: "Who was the first female Prime Minister of the United Kingdom?",
        options: [
          "Margaret Thatcher",
          "Queen Elizabeth I",
          "Theresa May",
          "Angela Merkel"
        ]),
    Question(
        text:
            "What was the name of the document signed by King John of England in 1215, limiting the powers of the monarchy?",
        options: [
          "Magna Carta",
          "Bill of Rights",
          "Declaration of Independence",
          "Constitution"
        ]),
    Question(
        text: "Which war is often referred to as the 'War to End All Wars'?",
        options: [
          "World War I",
          "American Civil War",
          "Vietnam War",
          "Korean War"
        ]),
  ],
  QuestionType.christianity: [
    Question(
        text: "Who is known as the central figure of Christianity?",
        options: ["Jesus Christ", "Moses", "Muhammad", "Buddha"]),
    Question(
        text: "In which city was Jesus born?",
        options: ["Bethlehem", "Jerusalem", "Nazareth", "Mecca"]),
    Question(
        text: "What is the first book of the New Testament?",
        options: ["Matthew", "Mark", "Luke", "John"]),
    Question(
        text: "Who was the first Pope of the Roman Catholic Church?",
        options: ["Saint Peter", "Saint Paul", "Saint John", "Saint Andrew"]),
    Question(text: "What event is celebrated on Easter Sunday?", options: [
      "Resurrection of Jesus",
      "Birth of Jesus",
      "Last Supper",
      "Crucifixion of Jesus"
    ]),
    Question(
        text:
            "What is the term for the Christian rite of initiation and admission into the Church?",
        options: ["Baptism", "Confirmation", "Communion", "Confession"]),
    Question(
        text: "Who is known as the 'Apostle to the Gentiles'?",
        options: ["Saint Paul", "Saint Peter", "Saint John", "Saint Andrew"]),
    Question(
        text:
            "What is the term for the Christian holy day commemorating the birth of Jesus?",
        options: ["Christmas", "Easter", "Good Friday", "Pentecost"]),
    Question(
        text: "What is the central sacrament and ritual of Christianity?",
        options: ["Eucharist", "Baptism", "Confirmation", "Confession"]),
    Question(
        text: "Who was the mother of Jesus?",
        options: ["Mary", "Elizabeth", "Ruth", "Rebecca"]),
  ],
  QuestionType.coding: [
    Question(text: "What does HTML stand for?", options: [
      "HyperText Markup Language",
      "Highly Technological Markup Language",
      "Home Tool Markup Language",
      "Hyperlinking Text Management Language"
    ]),
    Question(
        text:
            "What is the primary programming language used for Android app development?",
        options: ["Java", "Python", "Swift", "C++"]),
    Question(
        text:
            "Which symbol is used to start a comment in many programming languages?",
        options: ["//", "/*", "#", "%"]),
    Question(text: "What does CSS stand for?", options: [
      "Cascading Style Sheets",
      "Creative Style Sheets",
      "Computer Style Sheets",
      "Colorful Style Sheets"
    ]),
    Question(
        text: "What is the purpose of a 'for' loop in programming?",
        options: [
          "To repeat a block of code a certain number of times",
          "To define a function",
          "To declare a variable",
          "To perform mathematical calculations"
        ]),
    Question(
        text: "What is the file extension for a Python script?",
        options: [".py", ".js", ".html", ".cpp"]),
    Question(text: "What does JSON stand for?", options: [
      "JavaScript Object Notation",
      "JavaScript Object Naming",
      "JavaScript Object Network",
      "JavaScript Object Namespace"
    ]),
    Question(
        text:
            "What is the name of the version control system widely used in software development?",
        options: ["Git", "Subversion", "Mercurial", "Perforce"]),
    Question(
        text:
            "Which programming language is often used for web development and server-side scripting?",
        options: ["JavaScript", "Java", "C#", "Ruby"]),
    Question(
        text:
            "What is the term for a collection of related data organized for efficient retrieval?",
        options: ["Database", "Server", "Framework", "Compiler"]),
  ]
};
