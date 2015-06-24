class Seed

  def call
    generate_languages
    create_users
    generate_user_languages
  end

  def generate_languages
    Language.create(name: "Ruby")
    Language.create(name: "JavaScript")
    Language.create(name: "C")
    Language.create(name: "Python")
    Language.create(name: "Java")
    Language.create(name: "PHP")
    Language.create(name: "CSS")

    p "Languages Created"
  end

  def create_users

  User.create(
    nickname: "121watts",
    id: 7582765,
    image_url: "https://avatars.githubusercontent.com/u/7582765?v=3",
    details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

  User.create(
    nickname: "alanbsmith",
    id: 4818182,
    image_url: "https://avatars.githubusercontent.com/u/4818182?v=3",
    details: "i am so alone plz pair with me")

    User.create(
      nickname: "allisonlarson",
      id: 7552541,
      image_url: "https://avatars.githubusercontent.com/u/7552541?v=3",
      details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")

    User.create(
      nickname: "AndyDangerous",
      id: 2694765,
      image_url: "https://avatars.githubusercontent.com/u/2694765?v=3",
      details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname: "BobGu",
      id: 4348166,
      image_url: "https://avatars.githubusercontent.com/u/4348166?v=3",
      details: "i am so alone plz pair with me")

    User.create(
      nickname: "chadbrading",
      id: 6863100,
      image_url: "https://avatars.githubusercontent.com/u/6863100?v=3",
      details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    User.create(
      nickname: "coreyd303",
      id: 6662565,
      image_url: "https://avatars.githubusercontent.com/u/6662565?v=3",
      details: "i am so alone plz pair with me")

    User.create(
      nickname: "emilyadavis303",
      id: 7103421,
      image_url: "https://avatars.githubusercontent.com/u/7103421?v=3",
      details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

    p "Users created"
  end

  def generate_user_languages
    all_languages = Language.all
    users = User.all

    users.each do |user|
      user.languages << all_languages.sample(rand(1..all_languages.length))
    end

    p "users now have languages"
  end


  #
  # User.create(
  #   nickname: "ericfransen",
  #   id: 5271281,
  #   image_url: "https://avatars.githubusercontent.com/u/5271281?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "GusVilla303",
  #   id: 6902951,
  #   image_url: "https://avatars.githubusercontent.com/u/6902951?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "Hilaryous",
  #   id: 5042071,
  #   image_url: "https://avatars.githubusercontent.com/u/5042071?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "HoracioChavez",
  #   id: 3926939,
  #   image_url: "https://avatars.githubusercontent.com/u/3926939?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "jcasimir",
  #   id: 43102,
  #   image_url: "https://avatars.githubusercontent.com/u/43102?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "marcgarreau",
  #   id: 3621728,
  #   image_url: "https://avatars.githubusercontent.com/u/3621728?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "tanmdoan",
  #   id: 7057689,
  #   image_url: "https://avatars.githubusercontent.com/u/7057689?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "timproctor",
  #   id: 5150213,
  #   image_url: "https://avatars.githubusercontent.com/u/5150213?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "tyrbo",
  #   id: 2217533,
  #   image_url: "https://avatars.githubusercontent.com/u/2217533?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "wfro",
  #   id: 6454987,
  #   image_url: "https://avatars.githubusercontent.com/u/6454987?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "worace",
  #   id: 1227440,
  #   image_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "a6ftcruton",
  #   id: 5419731,
  #   image_url: "https://avatars.githubusercontent.com/u/5419731?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "awortham",
  #   id: 6271986,
  #   image_url: "https://avatars.githubusercontent.com/u/6271986?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "glenegbert",
  #   id: 5980245,
  #   image_url: "https://avatars.githubusercontent.com/u/5980245?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "ianderse",
  #   id: 5242189,
  #   image_url: "https://avatars.githubusercontent.com/u/5242189?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "jcasimir",
  #   id: 43102,
  #   image_url: "https://avatars.githubusercontent.com/u/43102?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "kavitasa",
  #   id: 1514862,
  #   image_url: "https://avatars.githubusercontent.com/u/1514862?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "lukeaiken",
  #   id: 3201898,
  #   image_url: "https://avatars.githubusercontent.com/u/3201898?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "rNavarrete",
  #   id: 3431580,
  #   image_url: "https://avatars.githubusercontent.com/u/3431580?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "smbsimon",
  #   id: 5553382,
  #   image_url: "https://avatars.githubusercontent.com/u/5553382?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "worace",
  #   id: 1227440,
  #   image_url: "https://avatars.githubusercontent.com/u/1227440?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "chandracarney",
  #   id: 8561841,
  #   image_url: "https://avatars.githubusercontent.com/u/8561841?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "ChasevanHekken",
  #   id: 5781795,
  #   image_url: "https://avatars.githubusercontent.com/u/5781795?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "Copywright",
  #   id: 7808793,
  #   image_url: "https://avatars.githubusercontent.com/u/7808793?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "dalexj",
  #   id: 2790993,
  #   image_url: "https://avatars.githubusercontent.com/u/2790993?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "dglunz",
  #   id: 2965795,
  #   image_url: "https://avatars.githubusercontent.com/u/2965795?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "gregnar",
  #   id: 8186136,
  #   image_url: "https://avatars.githubusercontent.com/u/8186136?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "katelane",
  #   id: 3933878,
  #   image_url: "https://avatars.githubusercontent.com/u/3933878?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "skuhlmann",
  #   id: 6923345,
  #   image_url: "https://avatars.githubusercontent.com/u/6923345?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "Tmee",
  #   id: 8226837,
  #   image_url: "https://avatars.githubusercontent.com/u/8226837?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "trayo",
  #   id: 6809782,
  #   image_url: "https://avatars.githubusercontent.com/u/6809782?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "VikiAnn",
  #   id: 5874167,
  #   image_url: "https://avatars.githubusercontent.com/u/5874167?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "zRouth",
  #   id: 8505719,
  #   image_url: "https://avatars.githubusercontent.com/u/8505719?v=3",
  #   languages: [
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "bhargavisatpathy",
  #   id: 8531351,
  #   image_url: "https://avatars.githubusercontent.com/u/8531351?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "bmrsny",
  #   id: 8440504,
  #   image_url: "https://avatars.githubusercontent.com/u/8440504?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "bryceholcomb",
  #   id: 6202829,
  #   image_url: "https://avatars.githubusercontent.com/u/6202829?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "cluhring",
  #   id: 8466906,
  #   image_url: "https://avatars.githubusercontent.com/u/8466906?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "EmilyMB",
  #   id: 8007635,
  #   image_url: "https://avatars.githubusercontent.com/u/8007635?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "Jwan622",
  #   id: 6790201,
  #   image_url: "https://avatars.githubusercontent.com/u/6790201?v=3",
  #   languages: [
  #     "JavaScript",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "KristaANelson",
  #   id: 8313881,
  #   image_url: "https://avatars.githubusercontent.com/u/8313881?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "larsonkonr",
  #   id: 7245142,
  #   image_url: "https://avatars.githubusercontent.com/u/7245142?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "laurawhalin",
  #   id: 8449527,
  #   image_url: "https://avatars.githubusercontent.com/u/8449527?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "Lydias303",
  #   id: 8863407,
  #   image_url: "https://avatars.githubusercontent.com/u/8863407?v=3",
  #   languages: [
  #     "Java",
  #     "Ruby",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "would love to get your help on my new startup; it's in stealth mode so we can only use 1-character variable names, but it will be fun")
  #
  # User.create(
  #   nickname: "mikedao",
  #   id: 3011748,
  #   image_url: "https://avatars.githubusercontent.com/u/3011748?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "C",
  #     "CSS",
  #     "PHP"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "ndwhtlssthr",
  #   id: 3827810,
  #   image_url: "https://avatars.githubusercontent.com/u/3827810?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Java",
  #     "C",
  #     "Python"
  #   ],
  #   details: "SalesEngine was my glory days can we work on it again?")
  #
  # User.create(
  #   nickname: "oorion",
  #   id: 869456,
  #   image_url: "https://avatars.githubusercontent.com/u/869456?v=3",
  #   languages: [
  #     "CSS",
  #     "PHP"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")
  #
  # User.create(
  #   nickname: "rshea303",
  #   id: 7894293,
  #   image_url: "https://avatars.githubusercontent.com/u/7894293?v=3",
  #   languages: [
  #     "JavaScript",
  #     "Python"
  #   ],
  #   details: "i am so alone plz pair with me")
  #
  # User.create(
  #   nickname: "scottalexandra",
  #   id: 8812335,
  #   image_url: "https://avatars.githubusercontent.com/u/8812335?v=3",
  #   languages: [
  #     "JavaScript",
  #     "C",
  #     "CSS",
  #     "PHP",
  #     "Python"
  #   ],
  #   details: "Want to pair on my .vimrc? I got tired of Dvorak so i've been devising my own keyboard layout from scratch")

  def self.call
    new.call
  end

end

Seed.call
