return {
    ["enchant_skills"] = {
        ["30001"] = {
            ["1.0.20"] = {
                ["id"] = 30001,
                ["nameKey"] = "battle_passive_skill_30001",
                ["descriptionKey"] = "battle_passive_skill_d_30001",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30001,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Normal Attack \nPower Up",
                ["name_JA"] = "攻撃力アップ（通常攻撃）",
                ["description_EN"] = "Increases attack power when using normal attacks",
                ["description_JA"] = "通常攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30001,
                        ["passiveSkillId"] = 30001,
                        ["description"] = "[Enc] 通常攻撃力 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1105,
                        ["effectVal"] = 5,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 6,
                        ["itemId"] = 10101001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30301,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Raw Meat",
                        ["itemName_JA"] = "生肉",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 7,
                        ["itemId"] = 10101004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30801,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Spoiled Meat",
                        ["itemName_JA"] = "腐った肉",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 42,
                        ["itemId"] = 30101002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30001,
                        ["enchant2SkillId"] = 31401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Rubble",
                        ["itemName_JA"] = "クズ石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 43,
                        ["itemId"] = 30101003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Flint",
                        ["itemName_JA"] = "火打石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 69,
                        ["itemId"] = 30105004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Branch",
                        ["itemName_JA"] = "木の枝",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 71,
                        ["itemId"] = 30105007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Stick",
                        ["itemName_JA"] = "棒",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 74,
                        ["itemId"] = 30200001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30202,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Beast Hide",
                        ["itemName_JA"] = "獣の皮",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 75,
                        ["itemId"] = 30200002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31802,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Beast Bone",
                        ["itemName_JA"] = "獣の骨",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 102,
                        ["itemId"] = 30300001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31802,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Paper",
                        ["itemName_JA"] = "紙",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30002"] = {
            ["1.0.20"] = {
                ["id"] = 30002,
                ["nameKey"] = "battle_passive_skill_30002",
                ["descriptionKey"] = "battle_passive_skill_d_30002",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30002,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Normal Attack \nPower Up",
                ["name_JA"] = "攻撃力アップ（通常攻撃）",
                ["description_EN"] = "Increases attack power when using normal attacks",
                ["description_JA"] = "通常攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30002,
                        ["passiveSkillId"] = 30002,
                        ["description"] = "[Enc] 通常攻撃力 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1105,
                        ["effectVal"] = 10,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 37,
                        ["itemId"] = 20401001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30002,
                        ["enchant2SkillId"] = 30402,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wood Arrow",
                        ["itemName_JA"] = "木の矢",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 39,
                        ["itemId"] = 20401003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30803,
                        ["enchant2SkillId"] = 30002,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Poison Arrow",
                        ["itemName_JA"] = "毒の矢",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 40,
                        ["itemId"] = 20401004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30903,
                        ["enchant2SkillId"] = 30002,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Para. Arrow",
                        ["itemName_JA"] = "痺れ矢",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 83,
                        ["itemId"] = 30200011,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30002,
                        ["enchant2SkillId"] = 30303,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Deer Antler",
                        ["itemName_JA"] = "シカの角",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 106,
                        ["itemId"] = 30300007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30002,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Whetstone",
                        ["itemName_JA"] = "砥石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 115,
                        ["itemId"] = 30304001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30002,
                        ["enchant2SkillId"] = 31803,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Glass",
                        ["itemName_JA"] = "ガラス",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30003"] = {
            ["1.0.20"] = {
                ["id"] = 30003,
                ["nameKey"] = "battle_passive_skill_30003",
                ["descriptionKey"] = "battle_passive_skill_d_30003",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30003,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Normal Attack \nPower Up",
                ["name_JA"] = "攻撃力アップ（通常攻撃）",
                ["description_EN"] = "Increases attack power when using normal attacks",
                ["description_JA"] = "通常攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30003,
                        ["passiveSkillId"] = 30003,
                        ["description"] = "[Enc] 通常攻撃力 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1105,
                        ["effectVal"] = 20,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 38,
                        ["itemId"] = 20401002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30003,
                        ["enchant2SkillId"] = 30402,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Iron Arrow",
                        ["itemName_JA"] = "鉄の矢",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 76,
                        ["itemId"] = 30200003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30003,
                        ["enchant2SkillId"] = 30302,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Wild Boar Tusk",
                        ["itemName_JA"] = "ワイルドボアの牙",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 109,
                        ["itemId"] = 30300015,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30503,
                        ["enchant2SkillId"] = 30003,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Fine Whetstone",
                        ["itemName_JA"] = "良質な砥石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30004"] = {
            ["1.0.20"] = {
                ["id"] = 30004,
                ["nameKey"] = "battle_passive_skill_30004",
                ["descriptionKey"] = "battle_passive_skill_d_30004",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30004,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Normal Attack \nPower Up",
                ["name_JA"] = "攻撃力アップ（通常攻撃）",
                ["description_EN"] = "Increases attack power when using normal attacks",
                ["description_JA"] = "通常攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30004,
                        ["passiveSkillId"] = 30004,
                        ["description"] = "[Enc] 通常攻撃力 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1105,
                        ["effectVal"] = 30,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 82,
                        ["itemId"] = 30200009,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30004,
                        ["enchant2SkillId"] = 30305,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Big Boar Tusk",
                        ["itemName_JA"] = "ビッグボアの牙",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 84,
                        ["itemId"] = 30200012,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30004,
                        ["enchant2SkillId"] = 30302,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Wolf Claw",
                        ["itemName_JA"] = "オオカミの爪",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30005"] = {
            ["1.0.20"] = {
                ["id"] = 30005,
                ["nameKey"] = "battle_passive_skill_30005",
                ["descriptionKey"] = "battle_passive_skill_d_30005",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30005,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Normal Attack \nPower Up",
                ["name_JA"] = "攻撃力アップ（通常攻撃）",
                ["description_EN"] = "Increases attack power when using normal attacks",
                ["description_JA"] = "通常攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30005,
                        ["passiveSkillId"] = 30005,
                        ["description"] = "[Enc] 通常攻撃力 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1105,
                        ["effectVal"] = 50,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 52,
                        ["itemId"] = 30102005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30005,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Obsidian",
                        ["itemName_JA"] = "黒曜石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30101"] = {
            ["1.0.20"] = {
                ["id"] = 30101,
                ["nameKey"] = "battle_passive_skill_30101",
                ["descriptionKey"] = "battle_passive_skill_d_30101",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30101,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Attack\nPower Up",
                ["name_JA"] = "攻撃力アップ（アクションスキル）",
                ["description_EN"] = "Increases attack power when using action skills",
                ["description_JA"] = "アクションスキルによる攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30101,
                        ["passiveSkillId"] = 30101,
                        ["description"] = "[Enc] スキル攻撃力 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1109,
                        ["effectVal"] = 5,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 9,
                        ["itemId"] = 10102006,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30301,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Red Onion",
                        ["itemName_JA"] = "レッドオニオン",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 21,
                        ["itemId"] = 10107001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30302,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Mushroom",
                        ["itemName_JA"] = "キノコ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 22,
                        ["itemId"] = 10107002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30803,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Poison Shroom",
                        ["itemName_JA"] = "ドクタケ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 23,
                        ["itemId"] = 10107003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30903,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Numbing Shroom",
                        ["itemName_JA"] = "シビレタケ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 44,
                        ["itemId"] = 30101004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Sand",
                        ["itemName_JA"] = "砂",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 52,
                        ["itemId"] = 30102005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30005,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Obsidian",
                        ["itemName_JA"] = "黒曜石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 72,
                        ["itemId"] = 30106001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30101,
                        ["enchant2SkillId"] = 30401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "MetaMaterial Fragment",
                        ["itemName_JA"] = "メタマテリアルのかけら",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 120,
                        ["itemId"] = 30307002,
                        ["actionSkillId"] = 20101,
                        ["enchant1SkillId"] = 30101,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Soaring Slash",
                        ["itemName_JA"] = "エンチャント本：飛翔斬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 126,
                        ["itemId"] = 30307011,
                        ["actionSkillId"] = 20127,
                        ["enchant1SkillId"] = 30101,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Cross Slash",
                        ["itemName_JA"] = "エンチャント本：十字斬り",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 127,
                        ["itemId"] = 30307012,
                        ["actionSkillId"] = 20107,
                        ["enchant1SkillId"] = 30101,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact",
                        ["itemName_JA"] = "エンチャント本：インパクト",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30102"] = {
            ["1.0.20"] = {
                ["id"] = 30102,
                ["nameKey"] = "battle_passive_skill_30102",
                ["descriptionKey"] = "battle_passive_skill_d_30102",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30102,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Attack\nPower Up",
                ["name_JA"] = "攻撃力アップ（アクションスキル）",
                ["description_EN"] = "Increases attack power when using action skills",
                ["description_JA"] = "アクションスキルによる攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30102,
                        ["passiveSkillId"] = 30102,
                        ["description"] = "[Enc] スキル攻撃力 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1109,
                        ["effectVal"] = 10,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 14,
                        ["itemId"] = 10102015,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30403,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Bellflower",
                        ["itemName_JA"] = "ホタルブクロ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 18,
                        ["itemId"] = 10105005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30102,
                        ["enchant2SkillId"] = 30401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Lemon",
                        ["itemName_JA"] = "レモン",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 27,
                        ["itemId"] = 10300015,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30804,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Poisonous Brew",
                        ["itemName_JA"] = "毒薬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 28,
                        ["itemId"] = 10300016,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30904,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Paralyzing Brew",
                        ["itemName_JA"] = "痺れ薬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 34,
                        ["itemId"] = 10402001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30902,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Throw Net",
                        ["itemName_JA"] = "手投げネット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 47,
                        ["itemId"] = 30101008,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30102,
                        ["enchant2SkillId"] = 30401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Limestone",
                        ["itemName_JA"] = "石灰石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 51,
                        ["itemId"] = 30102004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30102,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Gold Ore",
                        ["itemName_JA"] = "金鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 70,
                        ["itemId"] = 30105006,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31002,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Charcoal",
                        ["itemName_JA"] = "木炭",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 87,
                        ["itemId"] = 30200022,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30102,
                        ["enchant2SkillId"] = 30302,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Skeleton Bone",
                        ["itemName_JA"] = "スケルトンの骨",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30103"] = {
            ["1.0.20"] = {
                ["id"] = 30103,
                ["nameKey"] = "battle_passive_skill_30103",
                ["descriptionKey"] = "battle_passive_skill_d_30103",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30103,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Attack\nPower Up",
                ["name_JA"] = "攻撃力アップ（アクションスキル）",
                ["description_EN"] = "Increases attack power when using action skills",
                ["description_JA"] = "アクションスキルによる攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30103,
                        ["passiveSkillId"] = 30103,
                        ["description"] = "[Enc] スキル攻撃力 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1109,
                        ["effectVal"] = 20,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 35,
                        ["itemId"] = 10402003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30604,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Bomb",
                        ["itemName_JA"] = "爆弾",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 81,
                        ["itemId"] = 30200008,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31304,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Slime Core",
                        ["itemName_JA"] = "スライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 85,
                        ["itemId"] = 30200018,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30203,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Fox Pelt",
                        ["itemName_JA"] = "キツネの毛皮",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 88,
                        ["itemId"] = 30200023,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30103,
                        ["enchant2SkillId"] = 30304,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Skeleton Core",
                        ["itemName_JA"] = "スケルトンコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 91,
                        ["itemId"] = 30200031,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31204,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Fire Slime Core",
                        ["itemName_JA"] = "ファイアスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 94,
                        ["itemId"] = 30200034,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31404,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Rock Slime Core",
                        ["itemName_JA"] = "ロックスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 96,
                        ["itemId"] = 30200036,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31504,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Wind Slime Core",
                        ["itemName_JA"] = "ウィンドスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 98,
                        ["itemId"] = 30200038,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31604,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Electric Slime Core",
                        ["itemName_JA"] = "エレキスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 100,
                        ["itemId"] = 30200040,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31704,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Ice Slime Core",
                        ["itemName_JA"] = "アイススライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 112,
                        ["itemId"] = 30301006,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30103,
                        ["enchant2SkillId"] = 30202,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Gold Ingot",
                        ["itemName_JA"] = "金のインゴット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30104"] = {
            ["1.0.20"] = {
                ["id"] = 30104,
                ["nameKey"] = "battle_passive_skill_30104",
                ["descriptionKey"] = "battle_passive_skill_d_30104",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30104,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Attack\nPower Up",
                ["name_JA"] = "攻撃力アップ（アクションスキル）",
                ["description_EN"] = "Increases attack power when using action skills",
                ["description_JA"] = "アクションスキルによる攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30104,
                        ["passiveSkillId"] = 30104,
                        ["description"] = "[Enc] スキル攻撃力 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1109,
                        ["effectVal"] = 30,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 53,
                        ["itemId"] = 30103002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31805,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Diamond",
                        ["itemName_JA"] = "ダイヤモンド",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 54,
                        ["itemId"] = 30103004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31704,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Sapphire Ore",
                        ["itemName_JA"] = "サファイア鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 55,
                        ["itemId"] = 30103005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31204,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Ruby Ore",
                        ["itemName_JA"] = "ルビー鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 56,
                        ["itemId"] = 30103007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31604,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Topaz Ore",
                        ["itemName_JA"] = "トパーズ鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 57,
                        ["itemId"] = 30103008,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31504,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Emerald Ore",
                        ["itemName_JA"] = "エメラルド鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 58,
                        ["itemId"] = 30103009,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30404,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Amethyst Ore",
                        ["itemName_JA"] = "アメジスト鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 92,
                        ["itemId"] = 30200032,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30104,
                        ["enchant2SkillId"] = 30403,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Element",
                        ["itemName_JA"] = "エレメント",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30105"] = {
            ["1.0.20"] = {
                ["id"] = 30105,
                ["nameKey"] = "battle_passive_skill_30105",
                ["descriptionKey"] = "battle_passive_skill_d_30105",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30105,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Attack\nPower Up",
                ["name_JA"] = "攻撃力アップ（アクションスキル）",
                ["description_EN"] = "Increases attack power when using action skills",
                ["description_JA"] = "アクションスキルによる攻撃時の攻撃力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30105,
                        ["passiveSkillId"] = 30105,
                        ["description"] = "[Enc] スキル攻撃力 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1109,
                        ["effectVal"] = 50,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 59,
                        ["itemId"] = 30103011,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31705,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Sapphire Ore",
                        ["itemName_JA"] = "輝くサファイア鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 60,
                        ["itemId"] = 30103012,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31205,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Ruby Ore",
                        ["itemName_JA"] = "輝くルビー鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 61,
                        ["itemId"] = 30103013,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31605,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Topaz Ore",
                        ["itemName_JA"] = "輝くトパーズ鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 62,
                        ["itemId"] = 30103014,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31505,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Emerald Ore",
                        ["itemName_JA"] = "輝くエメラルド鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 63,
                        ["itemId"] = 30103015,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30405,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Amethyst Ore",
                        ["itemName_JA"] = "輝くアメジスト鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 89,
                        ["itemId"] = 30200029,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31305,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Huge Slime Core",
                        ["itemName_JA"] = "ヒュージスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30201"] = {
            ["1.0.20"] = {
                ["id"] = 30201,
                ["nameKey"] = "battle_passive_skill_30201",
                ["descriptionKey"] = "battle_passive_skill_d_30201",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30201,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Defense Up",
                ["name_JA"] = "防御力アップ",
                ["description_EN"] = "Increases defense power",
                ["description_JA"] = "防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30201,
                        ["passiveSkillId"] = 30201,
                        ["description"] = "[Enc] 防御力 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1106,
                        ["effectVal"] = 3,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 12,
                        ["itemId"] = 10102011,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Oily Seed Plant",
                        ["itemName_JA"] = "アブラナ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 19,
                        ["itemId"] = 10105007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30401,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Blueberry",
                        ["itemName_JA"] = "ブルーベリー",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 30,
                        ["itemId"] = 10400001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Repair Kit Lv 1",
                        ["itemName_JA"] = "装備修理キット Lv 1",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 51,
                        ["itemId"] = 30102004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30102,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Gold Ore",
                        ["itemName_JA"] = "金鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 105,
                        ["itemId"] = 30300004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Leather Cord",
                        ["itemName_JA"] = "革紐",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 113,
                        ["itemId"] = 30302001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31803,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Cloth",
                        ["itemName_JA"] = "布",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 116,
                        ["itemId"] = 30306001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Straw Building Material",
                        ["itemName_JA"] = "わらの建築資材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 152,
                        ["itemId"] = 10199003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30303,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Ener Jelly",
                        ["itemName_JA"] = "エネゼリー",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30202"] = {
            ["1.0.20"] = {
                ["id"] = 30202,
                ["nameKey"] = "battle_passive_skill_30202",
                ["descriptionKey"] = "battle_passive_skill_d_30202",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30202,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Defense Up",
                ["name_JA"] = "防御力アップ",
                ["description_EN"] = "Increases defense power",
                ["description_JA"] = "防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30202,
                        ["passiveSkillId"] = 30202,
                        ["description"] = "[Enc] 防御力 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1106,
                        ["effectVal"] = 5,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 31,
                        ["itemId"] = 10400002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30202,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Repair Kit Lv 2",
                        ["itemName_JA"] = "装備修理キット Lv 2",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 41,
                        ["itemId"] = 30101001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30202,
                        ["enchant2SkillId"] = 31401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Stone",
                        ["itemName_JA"] = "石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 67,
                        ["itemId"] = 30105001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30202,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Lumber",
                        ["itemName_JA"] = "木材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 74,
                        ["itemId"] = 30200001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30202,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Beast Hide",
                        ["itemName_JA"] = "獣の皮",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 77,
                        ["itemId"] = 30200004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30202,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wool",
                        ["itemName_JA"] = "羊毛",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 101,
                        ["itemId"] = 30200041,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30202,
                        ["enchant2SkillId"] = 30603,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Sheep Horn",
                        ["itemName_JA"] = "ヒツジの角",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 112,
                        ["itemId"] = 30301006,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30103,
                        ["enchant2SkillId"] = 30202,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Gold Ingot",
                        ["itemName_JA"] = "金のインゴット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 117,
                        ["itemId"] = 30306002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30202,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wooden Building Material",
                        ["itemName_JA"] = "木の建築資材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30203"] = {
            ["1.0.20"] = {
                ["id"] = 30203,
                ["nameKey"] = "battle_passive_skill_30203",
                ["descriptionKey"] = "battle_passive_skill_d_30203",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30203,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Defense Up",
                ["name_JA"] = "防御力アップ",
                ["description_EN"] = "Increases defense power",
                ["description_JA"] = "防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30203,
                        ["passiveSkillId"] = 30203,
                        ["description"] = "[Enc] 防御力 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1106,
                        ["effectVal"] = 10,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 32,
                        ["itemId"] = 10400003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30503,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Repair Kit Lv 3",
                        ["itemName_JA"] = "装備修理キット Lv 3",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 50,
                        ["itemId"] = 30102002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30203,
                        ["enchant2SkillId"] = 30503,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Iron Ore",
                        ["itemName_JA"] = "鉄鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 64,
                        ["itemId"] = 30104001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31403,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Resin",
                        ["itemName_JA"] = "樹脂",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 68,
                        ["itemId"] = 30105002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30503,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Quality Lumber",
                        ["itemName_JA"] = "高品質木材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 85,
                        ["itemId"] = 30200018,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30203,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Fox Pelt",
                        ["itemName_JA"] = "キツネの毛皮",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 103,
                        ["itemId"] = 30300002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30203,
                        ["enchant2SkillId"] = 30603,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Brick",
                        ["itemName_JA"] = "レンガ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 108,
                        ["itemId"] = 30300013,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30203,
                        ["enchant2SkillId"] = 30502,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Tanned Leather",
                        ["itemName_JA"] = "なめし革",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 111,
                        ["itemId"] = 30301002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31602,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Copper Ingot",
                        ["itemName_JA"] = "銅のインゴット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 118,
                        ["itemId"] = 30306003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30503,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Stone Building Material",
                        ["itemName_JA"] = "石の建築資材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30204"] = {
            ["1.0.20"] = {
                ["id"] = 30204,
                ["nameKey"] = "battle_passive_skill_30204",
                ["descriptionKey"] = "battle_passive_skill_d_30204",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30204,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Defense Up",
                ["name_JA"] = "防御力アップ",
                ["description_EN"] = "Increases defense power",
                ["description_JA"] = "防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 30204,
                        ["passiveSkillId"] = 30204,
                        ["description"] = "[Enc] 防御力 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1106,
                        ["effectVal"] = 15,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 33,
                        ["itemId"] = 10400004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30504,
                        ["enchant2SkillId"] = 30204,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Repair Kit Lv 4",
                        ["itemName_JA"] = "装備修理キット Lv 4",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 79,
                        ["itemId"] = 30200006,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30204,
                        ["enchant2SkillId"] = 30604,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Golem Stone",
                        ["itemName_JA"] = "ゴーレム石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 110,
                        ["itemId"] = 30301001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30204,
                        ["enchant2SkillId"] = 30503,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Iron Ingot",
                        ["itemName_JA"] = "鉄のインゴット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30301"] = {
            ["1.0.20"] = {
                ["id"] = 30301,
                ["nameKey"] = "battle_passive_skill_30301",
                ["descriptionKey"] = "battle_passive_skill_d_30301",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30301,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Stamina \nCost Down",
                ["name_JA"] = "スタミナ消費軽減（アクションスキル）",
                ["description_EN"] = "Reduces the stamina drain of action skills",
                ["description_JA"] = "アクションスキルによるスタミナ消費量を少なくする",
                ["effects"] = {
                    {
                        ["id"] = 30301,
                        ["passiveSkillId"] = 30301,
                        ["description"] = "[Enc] スキルスタミナ消費軽減 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1510,
                        ["effectVal"] = -10,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 6,
                        ["itemId"] = 10101001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30301,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Raw Meat",
                        ["itemName_JA"] = "生肉",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 8,
                        ["itemId"] = 10102004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30301,
                        ["enchant2SkillId"] = 30501,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Medicinal Leaf",
                        ["itemName_JA"] = "メディカルリーフ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 9,
                        ["itemId"] = 10102006,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30301,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Red Onion",
                        ["itemName_JA"] = "レッドオニオン",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 45,
                        ["itemId"] = 30101005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Clay",
                        ["itemName_JA"] = "粘土",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 66,
                        ["itemId"] = 30104003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31803,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Cotton",
                        ["itemName_JA"] = "綿花",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 119,
                        ["itemId"] = 30307001,
                        ["actionSkillId"] = 20126,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Rolling",
                        ["itemName_JA"] = "エンチャント本：ローリング",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 120,
                        ["itemId"] = 30307002,
                        ["actionSkillId"] = 20101,
                        ["enchant1SkillId"] = 30101,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Soaring Slash",
                        ["itemName_JA"] = "エンチャント本：飛翔斬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 121,
                        ["itemId"] = 30307003,
                        ["actionSkillId"] = 20102,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Heat Slash",
                        ["itemName_JA"] = "エンチャント本：ヒートスラッシュ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 122,
                        ["itemId"] = 30307004,
                        ["actionSkillId"] = 20103,
                        ["enchant1SkillId"] = 31301,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Mizuchi",
                        ["itemName_JA"] = "エンチャント本：ミズチ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 123,
                        ["itemId"] = 30307006,
                        ["actionSkillId"] = 20104,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wind Slash",
                        ["itemName_JA"] = "エンチャント本：風刃",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 124,
                        ["itemId"] = 30307007,
                        ["actionSkillId"] = 20105,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Soaring Slash (Electric)",
                        ["itemName_JA"] = "item_material_30307007",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 125,
                        ["itemId"] = 30307008,
                        ["actionSkillId"] = 20106,
                        ["enchant1SkillId"] = 31701,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Frost Edge",
                        ["itemName_JA"] = "エンチャント本：フロストエッジ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 126,
                        ["itemId"] = 30307011,
                        ["actionSkillId"] = 20127,
                        ["enchant1SkillId"] = 30101,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Cross Slash",
                        ["itemName_JA"] = "エンチャント本：十字斬り",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 127,
                        ["itemId"] = 30307012,
                        ["actionSkillId"] = 20107,
                        ["enchant1SkillId"] = 30101,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact",
                        ["itemName_JA"] = "エンチャント本：インパクト",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 128,
                        ["itemId"] = 30307013,
                        ["actionSkillId"] = 20108,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact (Fire)",
                        ["itemName_JA"] = "item_material_30307013",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 129,
                        ["itemId"] = 30307014,
                        ["actionSkillId"] = 20109,
                        ["enchant1SkillId"] = 31301,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact (Hydroo)",
                        ["itemName_JA"] = "item_material_30307014",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 130,
                        ["itemId"] = 30307015,
                        ["actionSkillId"] = 20110,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Terra Shatter",
                        ["itemName_JA"] = "エンチャント本：地砕剣",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 131,
                        ["itemId"] = 30307016,
                        ["actionSkillId"] = 20111,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wind Burst",
                        ["itemName_JA"] = "エンチャント本：ウィンドバースト",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 132,
                        ["itemId"] = 30307017,
                        ["actionSkillId"] = 20112,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact (Electric)",
                        ["itemName_JA"] = "item_material_30307017",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 133,
                        ["itemId"] = 30307018,
                        ["actionSkillId"] = 20113,
                        ["enchant1SkillId"] = 31701,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact (Ice)",
                        ["itemName_JA"] = "item_material_30307018",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 134,
                        ["itemId"] = 30307021,
                        ["actionSkillId"] = 20114,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Inferno Flash",
                        ["itemName_JA"] = "エンチャント本：猛火一閃",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 135,
                        ["itemId"] = 30307022,
                        ["actionSkillId"] = 20115,
                        ["enchant1SkillId"] = 31301,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wavebreaker Surge",
                        ["itemName_JA"] = "エンチャント本：波状の太刀",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 136,
                        ["itemId"] = 30307023,
                        ["actionSkillId"] = 20116,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wave (Terra)",
                        ["itemName_JA"] = "item_material_30307023",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 137,
                        ["itemId"] = 30307024,
                        ["actionSkillId"] = 20117,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wave (Wind)",
                        ["itemName_JA"] = "item_material_30307024",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 138,
                        ["itemId"] = 30307025,
                        ["actionSkillId"] = 20118,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Thunder Clap",
                        ["itemName_JA"] = "エンチャント本：サンダークラップ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 139,
                        ["itemId"] = 30307026,
                        ["actionSkillId"] = 20119,
                        ["enchant1SkillId"] = 31701,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Frostshard Dance",
                        ["itemName_JA"] = "エンチャント本：氷塊斬舞",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 140,
                        ["itemId"] = 30307029,
                        ["actionSkillId"] = 20120,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Scorching Thrust",
                        ["itemName_JA"] = "エンチャント本：灼火穿",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 141,
                        ["itemId"] = 30307030,
                        ["actionSkillId"] = 20121,
                        ["enchant1SkillId"] = 31301,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Hydro Shot",
                        ["itemName_JA"] = "エンチャント本：ハイドロショット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 142,
                        ["itemId"] = 30307031,
                        ["actionSkillId"] = 20122,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Beam (Terra)",
                        ["itemName_JA"] = "item_material_30307031",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 143,
                        ["itemId"] = 30307032,
                        ["actionSkillId"] = 20123,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Beam (Wind)",
                        ["itemName_JA"] = "item_material_30307032",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 144,
                        ["itemId"] = 30307033,
                        ["actionSkillId"] = 20124,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Plasma Ray",
                        ["itemName_JA"] = "エンチャント本：プラズマレイ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 145,
                        ["itemId"] = 30307034,
                        ["actionSkillId"] = 20125,
                        ["enchant1SkillId"] = 31701,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Glacial Thrust",
                        ["itemName_JA"] = "エンチャント本：グレイシャルスラスト",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 146,
                        ["itemId"] = 30307037,
                        ["actionSkillId"] = 20128,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Raijin Slash",
                        ["itemName_JA"] = "エンチャント本：雷神斬り",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 147,
                        ["itemId"] = 30307038,
                        ["actionSkillId"] = 20129,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Dash",
                        ["itemName_JA"] = "エンチャント本：スウィフト",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 148,
                        ["itemId"] = 30307039,
                        ["actionSkillId"] = 20130,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Battle Spirit",
                        ["itemName_JA"] = "エンチャント本：戦意高揚",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 149,
                        ["itemId"] = 30307040,
                        ["actionSkillId"] = 20131,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Round Heal",
                        ["itemName_JA"] = "item_material_30307040",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30302"] = {
            ["1.0.20"] = {
                ["id"] = 30302,
                ["nameKey"] = "battle_passive_skill_30302",
                ["descriptionKey"] = "battle_passive_skill_d_30302",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30302,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Stamina \nCost Down",
                ["name_JA"] = "スタミナ消費軽減（アクションスキル）",
                ["description_EN"] = "Reduces the stamina drain of action skills",
                ["description_JA"] = "アクションスキルによるスタミナ消費量を少なくする",
                ["effects"] = {
                    {
                        ["id"] = 30302,
                        ["passiveSkillId"] = 30302,
                        ["description"] = "[Enc] スキルスタミナ消費軽減 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1510,
                        ["effectVal"] = -20,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 11,
                        ["itemId"] = 10102008,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30302,
                        ["enchant2SkillId"] = 30601,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Nora Garlic",
                        ["itemName_JA"] = "ノラニンニク",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 20,
                        ["itemId"] = 10105010,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30302,
                        ["enchant2SkillId"] = 30501,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Apple",
                        ["itemName_JA"] = "リンゴ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 21,
                        ["itemId"] = 10107001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30302,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Mushroom",
                        ["itemName_JA"] = "キノコ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 25,
                        ["itemId"] = 10300001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30302,
                        ["enchant2SkillId"] = 30402,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Decoction",
                        ["itemName_JA"] = "煎じ薬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 76,
                        ["itemId"] = 30200003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30003,
                        ["enchant2SkillId"] = 30302,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Wild Boar Tusk",
                        ["itemName_JA"] = "ワイルドボアの牙",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 84,
                        ["itemId"] = 30200012,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30004,
                        ["enchant2SkillId"] = 30302,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Wolf Claw",
                        ["itemName_JA"] = "オオカミの爪",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 87,
                        ["itemId"] = 30200022,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30102,
                        ["enchant2SkillId"] = 30302,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Skeleton Bone",
                        ["itemName_JA"] = "スケルトンの骨",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 90,
                        ["itemId"] = 30200030,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31203,
                        ["enchant2SkillId"] = 30302,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Fire Slime Gel",
                        ["itemName_JA"] = "ファイアスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30303"] = {
            ["1.0.20"] = {
                ["id"] = 30303,
                ["nameKey"] = "battle_passive_skill_30303",
                ["descriptionKey"] = "battle_passive_skill_d_30303",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30303,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Stamina \nCost Down",
                ["name_JA"] = "スタミナ消費軽減（アクションスキル）",
                ["description_EN"] = "Reduces the stamina drain of action skills",
                ["description_JA"] = "アクションスキルによるスタミナ消費量を少なくする",
                ["effects"] = {
                    {
                        ["id"] = 30303,
                        ["passiveSkillId"] = 30303,
                        ["description"] = "[Enc] スキルスタミナ消費軽減 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1510,
                        ["effectVal"] = -30,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 13,
                        ["itemId"] = 10102014,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31404,
                        ["enchant2SkillId"] = 30303,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Mandragora Root",
                        ["itemName_JA"] = "マンドラゴラの根",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 26,
                        ["itemId"] = 10300002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30303,
                        ["enchant2SkillId"] = 30403,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Basic Recovery Potion",
                        ["itemName_JA"] = "ポーション",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 36,
                        ["itemId"] = 10405001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31403,
                        ["enchant2SkillId"] = 30303,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Fertilizer",
                        ["itemName_JA"] = "肥料",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 83,
                        ["itemId"] = 30200011,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30002,
                        ["enchant2SkillId"] = 30303,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Deer Antler",
                        ["itemName_JA"] = "シカの角",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 150,
                        ["itemId"] = 10102003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30802,
                        ["enchant2SkillId"] = 30303,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Myrtle",
                        ["itemName_JA"] = "ヒメニチソウ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 152,
                        ["itemId"] = 10199003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30303,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Ener Jelly",
                        ["itemName_JA"] = "エネゼリー",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30304"] = {
            ["1.0.20"] = {
                ["id"] = 30304,
                ["nameKey"] = "battle_passive_skill_30304",
                ["descriptionKey"] = "battle_passive_skill_d_30304",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30304,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Stamina \nCost Down",
                ["name_JA"] = "スタミナ消費軽減（アクションスキル）",
                ["description_EN"] = "Reduces the stamina drain of action skills",
                ["description_JA"] = "アクションスキルによるスタミナ消費量を少なくする",
                ["effects"] = {
                    {
                        ["id"] = 30304,
                        ["passiveSkillId"] = 30304,
                        ["description"] = "[Enc] スキルスタミナ消費軽減 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1510,
                        ["effectVal"] = -40,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 88,
                        ["itemId"] = 30200023,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30103,
                        ["enchant2SkillId"] = 30304,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Skeleton Core",
                        ["itemName_JA"] = "スケルトンコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30305"] = {
            ["1.0.20"] = {
                ["id"] = 30305,
                ["nameKey"] = "battle_passive_skill_30305",
                ["descriptionKey"] = "battle_passive_skill_d_30305",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30305,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Stamina \nCost Down",
                ["name_JA"] = "スタミナ消費軽減（アクションスキル）",
                ["description_EN"] = "Reduces the stamina drain of action skills",
                ["description_JA"] = "アクションスキルによるスタミナ消費量を少なくする",
                ["effects"] = {
                    {
                        ["id"] = 30305,
                        ["passiveSkillId"] = 30305,
                        ["description"] = "[Enc] スキルスタミナ消費軽減 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1510,
                        ["effectVal"] = -50,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 82,
                        ["itemId"] = 30200009,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30004,
                        ["enchant2SkillId"] = 30305,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Big Boar Tusk",
                        ["itemName_JA"] = "ビッグボアの牙",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30401"] = {
            ["1.0.20"] = {
                ["id"] = 30401,
                ["nameKey"] = "battle_passive_skill_30401",
                ["descriptionKey"] = "battle_passive_skill_d_30401",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30401,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Reduce Action \nSkill Cooldown",
                ["name_JA"] = "クールダウン軽減（アクションスキル）",
                ["description_EN"] = "Reduces the cooldown time of action skills",
                ["description_JA"] = "アクションスキルのクールダウン時間を短くする",
                ["effects"] = {
                    {
                        ["id"] = 30401,
                        ["passiveSkillId"] = 30401,
                        ["description"] = "[Enc] スキルクールタイム軽減 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1512,
                        ["effectVal"] = -5,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 18,
                        ["itemId"] = 10105005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30102,
                        ["enchant2SkillId"] = 30401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Lemon",
                        ["itemName_JA"] = "レモン",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 19,
                        ["itemId"] = 10105007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30401,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Blueberry",
                        ["itemName_JA"] = "ブルーベリー",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 47,
                        ["itemId"] = 30101008,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30102,
                        ["enchant2SkillId"] = 30401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Limestone",
                        ["itemName_JA"] = "石灰石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 72,
                        ["itemId"] = 30106001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30101,
                        ["enchant2SkillId"] = 30401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "MetaMaterial Fragment",
                        ["itemName_JA"] = "メタマテリアルのかけら",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 86,
                        ["itemId"] = 30200019,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Chicken Feather",
                        ["itemName_JA"] = "ニワトリの羽根",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30402"] = {
            ["1.0.20"] = {
                ["id"] = 30402,
                ["nameKey"] = "battle_passive_skill_30402",
                ["descriptionKey"] = "battle_passive_skill_d_30402",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30402,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Reduce Action \nSkill Cooldown",
                ["name_JA"] = "クールダウン軽減（アクションスキル）",
                ["description_EN"] = "Reduces the cooldown time of action skills",
                ["description_JA"] = "アクションスキルのクールダウン時間を短くする",
                ["effects"] = {
                    {
                        ["id"] = 30402,
                        ["passiveSkillId"] = 30402,
                        ["description"] = "[Enc] スキルクールタイム軽減 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1512,
                        ["effectVal"] = -10,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 25,
                        ["itemId"] = 10300001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30302,
                        ["enchant2SkillId"] = 30402,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Decoction",
                        ["itemName_JA"] = "煎じ薬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 37,
                        ["itemId"] = 20401001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30002,
                        ["enchant2SkillId"] = 30402,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wood Arrow",
                        ["itemName_JA"] = "木の矢",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 38,
                        ["itemId"] = 20401002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30003,
                        ["enchant2SkillId"] = 30402,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Iron Arrow",
                        ["itemName_JA"] = "鉄の矢",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30403"] = {
            ["1.0.20"] = {
                ["id"] = 30403,
                ["nameKey"] = "battle_passive_skill_30403",
                ["descriptionKey"] = "battle_passive_skill_d_30403",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30403,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Reduce Action \nSkill Cooldown",
                ["name_JA"] = "クールダウン軽減（アクションスキル）",
                ["description_EN"] = "Reduces the cooldown time of action skills",
                ["description_JA"] = "アクションスキルのクールダウン時間を短くする",
                ["effects"] = {
                    {
                        ["id"] = 30403,
                        ["passiveSkillId"] = 30403,
                        ["description"] = "[Enc] スキルクールタイム軽減 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1512,
                        ["effectVal"] = -15,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 14,
                        ["itemId"] = 10102015,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30403,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Bellflower",
                        ["itemName_JA"] = "ホタルブクロ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 26,
                        ["itemId"] = 10300002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30303,
                        ["enchant2SkillId"] = 30403,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Basic Recovery Potion",
                        ["itemName_JA"] = "ポーション",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 92,
                        ["itemId"] = 30200032,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30104,
                        ["enchant2SkillId"] = 30403,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Element",
                        ["itemName_JA"] = "エレメント",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30404"] = {
            ["1.0.20"] = {
                ["id"] = 30404,
                ["nameKey"] = "battle_passive_skill_30404",
                ["descriptionKey"] = "battle_passive_skill_d_30404",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30404,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Reduce Action \nSkill Cooldown",
                ["name_JA"] = "クールダウン軽減（アクションスキル）",
                ["description_EN"] = "Reduces the cooldown time of action skills",
                ["description_JA"] = "アクションスキルのクールダウン時間を短くする",
                ["effects"] = {
                    {
                        ["id"] = 30404,
                        ["passiveSkillId"] = 30404,
                        ["description"] = "[Enc] スキルクールタイム軽減 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1512,
                        ["effectVal"] = -20,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 58,
                        ["itemId"] = 30103009,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30404,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Amethyst Ore",
                        ["itemName_JA"] = "アメジスト鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30405"] = {
            ["1.0.20"] = {
                ["id"] = 30405,
                ["nameKey"] = "battle_passive_skill_30405",
                ["descriptionKey"] = "battle_passive_skill_d_30405",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30405,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Reduce Action \nSkill Cooldown",
                ["name_JA"] = "クールダウン軽減（アクションスキル）",
                ["description_EN"] = "Reduces the cooldown time of action skills",
                ["description_JA"] = "アクションスキルのクールダウン時間を短くする",
                ["effects"] = {
                    {
                        ["id"] = 30405,
                        ["passiveSkillId"] = 30405,
                        ["description"] = "[Enc] スキルクールタイム軽減 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1512,
                        ["effectVal"] = -30,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 63,
                        ["itemId"] = 30103015,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30405,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Amethyst Ore",
                        ["itemName_JA"] = "輝くアメジスト鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30501"] = {
            ["1.0.20"] = {
                ["id"] = 30501,
                ["nameKey"] = "battle_passive_skill_30501",
                ["descriptionKey"] = "battle_passive_skill_d_30501",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30501,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Durability\nDrain Down",
                ["name_JA"] = "耐久値消費軽減（アクションスキル）",
                ["description_EN"] = "Reduces durability consumption from action skills",
                ["description_JA"] = "アクションスキルによる耐久値の消費量を軽減する",
                ["effects"] = {
                    {
                        ["id"] = 30501,
                        ["passiveSkillId"] = 30501,
                        ["description"] = "[Enc] スキル耐久値消費軽減 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1508,
                        ["effectVal"] = -20,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 8,
                        ["itemId"] = 10102004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30301,
                        ["enchant2SkillId"] = 30501,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Medicinal Leaf",
                        ["itemName_JA"] = "メディカルリーフ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 20,
                        ["itemId"] = 10105010,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30302,
                        ["enchant2SkillId"] = 30501,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Apple",
                        ["itemName_JA"] = "リンゴ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 30,
                        ["itemId"] = 10400001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Repair Kit Lv 1",
                        ["itemName_JA"] = "装備修理キット Lv 1",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 65,
                        ["itemId"] = 30104002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 31801,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Fiber",
                        ["itemName_JA"] = "繊維",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 69,
                        ["itemId"] = 30105004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Branch",
                        ["itemName_JA"] = "木の枝",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 104,
                        ["itemId"] = 30300003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31802,
                        ["enchant2SkillId"] = 30501,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Thread",
                        ["itemName_JA"] = "糸",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 116,
                        ["itemId"] = 30306001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Straw Building Material",
                        ["itemName_JA"] = "わらの建築資材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 119,
                        ["itemId"] = 30307001,
                        ["actionSkillId"] = 20126,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Rolling",
                        ["itemName_JA"] = "エンチャント本：ローリング",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 147,
                        ["itemId"] = 30307038,
                        ["actionSkillId"] = 20129,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Dash",
                        ["itemName_JA"] = "エンチャント本：スウィフト",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 148,
                        ["itemId"] = 30307039,
                        ["actionSkillId"] = 20130,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Battle Spirit",
                        ["itemName_JA"] = "エンチャント本：戦意高揚",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 149,
                        ["itemId"] = 30307040,
                        ["actionSkillId"] = 20131,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Round Heal",
                        ["itemName_JA"] = "item_material_30307040",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 151,
                        ["itemId"] = 10199002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30902,
                        ["enchant2SkillId"] = 30501,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Honey",
                        ["itemName_JA"] = "はちみつ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30502"] = {
            ["1.0.20"] = {
                ["id"] = 30502,
                ["nameKey"] = "battle_passive_skill_30502",
                ["descriptionKey"] = "battle_passive_skill_d_30502",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30502,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Durability\nDrain Down",
                ["name_JA"] = "耐久値消費軽減（アクションスキル）",
                ["description_EN"] = "Reduces durability consumption from action skills",
                ["description_JA"] = "アクションスキルによる耐久値の消費量を軽減する",
                ["effects"] = {
                    {
                        ["id"] = 30502,
                        ["passiveSkillId"] = 30502,
                        ["description"] = "[Enc] スキル耐久値消費軽減 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1508,
                        ["effectVal"] = -30,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 31,
                        ["itemId"] = 10400002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30202,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Repair Kit Lv 2",
                        ["itemName_JA"] = "装備修理キット Lv 2",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 49,
                        ["itemId"] = 30102001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30502,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Copper Ore",
                        ["itemName_JA"] = "銅鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 67,
                        ["itemId"] = 30105001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30202,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Lumber",
                        ["itemName_JA"] = "木材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 71,
                        ["itemId"] = 30105007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Stick",
                        ["itemName_JA"] = "棒",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 105,
                        ["itemId"] = 30300004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Leather Cord",
                        ["itemName_JA"] = "革紐",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 106,
                        ["itemId"] = 30300007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30002,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Whetstone",
                        ["itemName_JA"] = "砥石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 107,
                        ["itemId"] = 30300009,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Oil",
                        ["itemName_JA"] = "油",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 108,
                        ["itemId"] = 30300013,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30203,
                        ["enchant2SkillId"] = 30502,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Tanned Leather",
                        ["itemName_JA"] = "なめし革",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 117,
                        ["itemId"] = 30306002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 30202,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wooden Building Material",
                        ["itemName_JA"] = "木の建築資材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30503"] = {
            ["1.0.20"] = {
                ["id"] = 30503,
                ["nameKey"] = "battle_passive_skill_30503",
                ["descriptionKey"] = "battle_passive_skill_d_30503",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30503,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Durability\nDrain Down",
                ["name_JA"] = "耐久値消費軽減（アクションスキル）",
                ["description_EN"] = "Reduces durability consumption from action skills",
                ["description_JA"] = "アクションスキルによる耐久値の消費量を軽減する",
                ["effects"] = {
                    {
                        ["id"] = 30503,
                        ["passiveSkillId"] = 30503,
                        ["description"] = "[Enc] スキル耐久値消費軽減 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1508,
                        ["effectVal"] = -40,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 32,
                        ["itemId"] = 10400003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30503,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Repair Kit Lv 3",
                        ["itemName_JA"] = "装備修理キット Lv 3",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 46,
                        ["itemId"] = 30101007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31403,
                        ["enchant2SkillId"] = 30503,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Plaster",
                        ["itemName_JA"] = "モルタル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 50,
                        ["itemId"] = 30102002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30203,
                        ["enchant2SkillId"] = 30503,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Iron Ore",
                        ["itemName_JA"] = "鉄鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 68,
                        ["itemId"] = 30105002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30503,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Quality Lumber",
                        ["itemName_JA"] = "高品質木材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 109,
                        ["itemId"] = 30300015,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30503,
                        ["enchant2SkillId"] = 30003,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Fine Whetstone",
                        ["itemName_JA"] = "良質な砥石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 110,
                        ["itemId"] = 30301001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30204,
                        ["enchant2SkillId"] = 30503,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Iron Ingot",
                        ["itemName_JA"] = "鉄のインゴット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 118,
                        ["itemId"] = 30306003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30503,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Stone Building Material",
                        ["itemName_JA"] = "石の建築資材",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30504"] = {
            ["1.0.20"] = {
                ["id"] = 30504,
                ["nameKey"] = "battle_passive_skill_30504",
                ["descriptionKey"] = "battle_passive_skill_d_30504",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30504,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Action Skill Durability\nDrain Down",
                ["name_JA"] = "耐久値消費軽減（アクションスキル）",
                ["description_EN"] = "Reduces durability consumption from action skills",
                ["description_JA"] = "アクションスキルによる耐久値の消費量を軽減する",
                ["effects"] = {
                    {
                        ["id"] = 30504,
                        ["passiveSkillId"] = 30504,
                        ["description"] = "[Enc] スキル耐久値消費軽減 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1508,
                        ["effectVal"] = -45,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 33,
                        ["itemId"] = 10400004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30504,
                        ["enchant2SkillId"] = 30204,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Repair Kit Lv 4",
                        ["itemName_JA"] = "装備修理キット Lv 4",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30601"] = {
            ["1.0.20"] = {
                ["id"] = 30601,
                ["nameKey"] = "battle_passive_skill_30601",
                ["descriptionKey"] = "battle_passive_skill_d_30601",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30601,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Knockback Up",
                ["name_JA"] = "ノックバック増加",
                ["description_EN"] = "Increases the knockback distance of attacks",
                ["description_JA"] = "攻撃によるノックバック距離を増やす",
                ["effects"] = {
                    {
                        ["id"] = 30601,
                        ["passiveSkillId"] = 30601,
                        ["description"] = "[Enc] ノックバック増加 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 3002,
                        ["effectVal"] = 25,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 11,
                        ["itemId"] = 10102008,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30302,
                        ["enchant2SkillId"] = 30601,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Nora Garlic",
                        ["itemName_JA"] = "ノラニンニク",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 24,
                        ["itemId"] = 10199001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30801,
                        ["enchant2SkillId"] = 30601,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Food Scraps",
                        ["itemName_JA"] = "腐った食料",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30603"] = {
            ["1.0.20"] = {
                ["id"] = 30603,
                ["nameKey"] = "battle_passive_skill_30603",
                ["descriptionKey"] = "battle_passive_skill_d_30603",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30603,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Knockback Up",
                ["name_JA"] = "ノックバック増加",
                ["description_EN"] = "Increases the knockback distance of attacks",
                ["description_JA"] = "攻撃によるノックバック距離を増やす",
                ["effects"] = {
                    {
                        ["id"] = 30603,
                        ["passiveSkillId"] = 30603,
                        ["description"] = "[Enc] ノックバック増加 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 3002,
                        ["effectVal"] = 75,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 48,
                        ["itemId"] = 30101013,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30603,
                        ["enchant2SkillId"] = 31202,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Bombrock",
                        ["itemName_JA"] = "爆弾石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 101,
                        ["itemId"] = 30200041,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30202,
                        ["enchant2SkillId"] = 30603,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Sheep Horn",
                        ["itemName_JA"] = "ヒツジの角",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 103,
                        ["itemId"] = 30300002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30203,
                        ["enchant2SkillId"] = 30603,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Brick",
                        ["itemName_JA"] = "レンガ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30604"] = {
            ["1.0.20"] = {
                ["id"] = 30604,
                ["nameKey"] = "battle_passive_skill_30604",
                ["descriptionKey"] = "battle_passive_skill_d_30604",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30604,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Knockback Up",
                ["name_JA"] = "ノックバック増加",
                ["description_EN"] = "Increases the knockback distance of attacks",
                ["description_JA"] = "攻撃によるノックバック距離を増やす",
                ["effects"] = {
                    {
                        ["id"] = 30604,
                        ["passiveSkillId"] = 30604,
                        ["description"] = "[Enc] ノックバック増加 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 3002,
                        ["effectVal"] = 100,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 35,
                        ["itemId"] = 10402003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30604,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Bomb",
                        ["itemName_JA"] = "爆弾",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 79,
                        ["itemId"] = 30200006,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30204,
                        ["enchant2SkillId"] = 30604,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Golem Stone",
                        ["itemName_JA"] = "ゴーレム石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30605"] = {
            ["1.0.20"] = {
                ["id"] = 30605,
                ["nameKey"] = "battle_passive_skill_30605",
                ["descriptionKey"] = "battle_passive_skill_d_30605",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30605,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Knockback Up",
                ["name_JA"] = "ノックバック増加",
                ["description_EN"] = "Increases the knockback distance of attacks",
                ["description_JA"] = "攻撃によるノックバック距離を増やす",
                ["effects"] = {
                    {
                        ["id"] = 30605,
                        ["passiveSkillId"] = 30605,
                        ["description"] = "[Enc] ノックバック増加 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 3002,
                        ["effectVal"] = 120,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 78,
                        ["itemId"] = 30200005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31405,
                        ["enchant2SkillId"] = 30605,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Golem Core",
                        ["itemName_JA"] = "ゴーレムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30801"] = {
            ["1.0.20"] = {
                ["id"] = 30801,
                ["nameKey"] = "battle_passive_skill_30801",
                ["descriptionKey"] = "battle_passive_skill_d_30801",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30801,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Poison",
                ["name_JA"] = "毒効果蓄積",
                ["description_EN"] = "Builds up poison on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に毒の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 30801,
                        ["passiveSkillId"] = 30801,
                        ["description"] = "[Enc] 毒蓄積 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1401,
                        ["effectVal"] = 15,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 7,
                        ["itemId"] = 10101004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30801,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Spoiled Meat",
                        ["itemName_JA"] = "腐った肉",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 24,
                        ["itemId"] = 10199001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30801,
                        ["enchant2SkillId"] = 30601,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Food Scraps",
                        ["itemName_JA"] = "腐った食料",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30802"] = {
            ["1.0.20"] = {
                ["id"] = 30802,
                ["nameKey"] = "battle_passive_skill_30802",
                ["descriptionKey"] = "battle_passive_skill_d_30802",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30802,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Poison",
                ["name_JA"] = "毒効果蓄積",
                ["description_EN"] = "Builds up poison on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に毒の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 30802,
                        ["passiveSkillId"] = 30802,
                        ["description"] = "[Enc] 毒蓄積 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1401,
                        ["effectVal"] = 25,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 150,
                        ["itemId"] = 10102003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30802,
                        ["enchant2SkillId"] = 30303,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Myrtle",
                        ["itemName_JA"] = "ヒメニチソウ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30803"] = {
            ["1.0.20"] = {
                ["id"] = 30803,
                ["nameKey"] = "battle_passive_skill_30803",
                ["descriptionKey"] = "battle_passive_skill_d_30803",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30803,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Poison",
                ["name_JA"] = "毒効果蓄積",
                ["description_EN"] = "Builds up poison on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に毒の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 30803,
                        ["passiveSkillId"] = 30803,
                        ["description"] = "[Enc] 毒蓄積 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1401,
                        ["effectVal"] = 30,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 22,
                        ["itemId"] = 10107002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30803,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Poison Shroom",
                        ["itemName_JA"] = "ドクタケ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 39,
                        ["itemId"] = 20401003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30803,
                        ["enchant2SkillId"] = 30002,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Poison Arrow",
                        ["itemName_JA"] = "毒の矢",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30804"] = {
            ["1.0.20"] = {
                ["id"] = 30804,
                ["nameKey"] = "battle_passive_skill_30804",
                ["descriptionKey"] = "battle_passive_skill_d_30804",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30804,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Poison",
                ["name_JA"] = "毒効果蓄積",
                ["description_EN"] = "Builds up poison on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に毒の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 30804,
                        ["passiveSkillId"] = 30804,
                        ["description"] = "[Enc] 毒蓄積 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1401,
                        ["effectVal"] = 35,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 27,
                        ["itemId"] = 10300015,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30804,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Poisonous Brew",
                        ["itemName_JA"] = "毒薬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30902"] = {
            ["1.0.20"] = {
                ["id"] = 30902,
                ["nameKey"] = "battle_passive_skill_30902",
                ["descriptionKey"] = "battle_passive_skill_d_30902",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30902,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Paralysis",
                ["name_JA"] = "麻痺効果蓄積",
                ["description_EN"] = "Builds up paralysis on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に麻痺の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 30902,
                        ["passiveSkillId"] = 30902,
                        ["description"] = "[Enc] 麻痺蓄積 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1411,
                        ["effectVal"] = 25,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 34,
                        ["itemId"] = 10402001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30902,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Throw Net",
                        ["itemName_JA"] = "手投げネット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 151,
                        ["itemId"] = 10199002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30902,
                        ["enchant2SkillId"] = 30501,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Honey",
                        ["itemName_JA"] = "はちみつ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30903"] = {
            ["1.0.20"] = {
                ["id"] = 30903,
                ["nameKey"] = "battle_passive_skill_30903",
                ["descriptionKey"] = "battle_passive_skill_d_30903",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30903,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Paralysis",
                ["name_JA"] = "麻痺効果蓄積",
                ["description_EN"] = "Builds up paralysis on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に麻痺の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 30903,
                        ["passiveSkillId"] = 30903,
                        ["description"] = "[Enc] 麻痺蓄積 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1411,
                        ["effectVal"] = 30,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 23,
                        ["itemId"] = 10107003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30903,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Numbing Shroom",
                        ["itemName_JA"] = "シビレタケ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 40,
                        ["itemId"] = 20401004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30903,
                        ["enchant2SkillId"] = 30002,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Para. Arrow",
                        ["itemName_JA"] = "痺れ矢",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["30904"] = {
            ["1.0.20"] = {
                ["id"] = 30904,
                ["nameKey"] = "battle_passive_skill_30904",
                ["descriptionKey"] = "battle_passive_skill_d_30904",
                ["iconAddress"] = "Mace_128",
                ["group"] = 30904,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Paralysis",
                ["name_JA"] = "麻痺効果蓄積",
                ["description_EN"] = "Builds up paralysis on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に麻痺の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 30904,
                        ["passiveSkillId"] = 30904,
                        ["description"] = "[Enc] 麻痺蓄積 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1411,
                        ["effectVal"] = 35,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 28,
                        ["itemId"] = 10300016,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30904,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Paralyzing Brew",
                        ["itemName_JA"] = "痺れ薬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31002"] = {
            ["1.0.20"] = {
                ["id"] = 31002,
                ["nameKey"] = "battle_passive_skill_31002",
                ["descriptionKey"] = "battle_passive_skill_d_31002",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31002,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Burning",
                ["name_JA"] = "燃焼効果蓄積",
                ["description_EN"] = "Builds up burning on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に燃焼の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 31002,
                        ["passiveSkillId"] = 31002,
                        ["description"] = "[Enc] 燃焼蓄積 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1421,
                        ["effectVal"] = 25,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 10,
                        ["itemId"] = 10102007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31002,
                        ["enchant2SkillId"] = 31202,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Hakka Pepper",
                        ["itemName_JA"] = "ハッカペッパー",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 70,
                        ["itemId"] = 30105006,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31002,
                        ["enchant2SkillId"] = 30102,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Charcoal",
                        ["itemName_JA"] = "木炭",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31003"] = {
            ["1.0.20"] = {
                ["id"] = 31003,
                ["nameKey"] = "battle_passive_skill_31003",
                ["descriptionKey"] = "battle_passive_skill_d_31003",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31003,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Burning",
                ["name_JA"] = "燃焼効果蓄積",
                ["description_EN"] = "Builds up burning on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に燃焼の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 31003,
                        ["passiveSkillId"] = 31003,
                        ["description"] = "[Enc] 燃焼蓄積 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1421,
                        ["effectVal"] = 30,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 114,
                        ["itemId"] = 30303001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31202,
                        ["enchant2SkillId"] = 31003,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Gunpowder",
                        ["itemName_JA"] = "火薬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31004"] = {
            ["1.0.20"] = {
                ["id"] = 31004,
                ["nameKey"] = "battle_passive_skill_31004",
                ["descriptionKey"] = "battle_passive_skill_d_31004",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31004,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Burning",
                ["name_JA"] = "燃焼効果蓄積",
                ["description_EN"] = "Builds up burning on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に燃焼の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 31004,
                        ["passiveSkillId"] = 31004,
                        ["description"] = "[Enc] 燃焼蓄積 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1421,
                        ["effectVal"] = 35,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 15,
                        ["itemId"] = 10102016,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31004,
                        ["enchant2SkillId"] = 31203,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Flame Pepper",
                        ["itemName_JA"] = "フレイムペッパー",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31005"] = {
            ["1.0.20"] = {
                ["id"] = 31005,
                ["nameKey"] = "battle_passive_skill_31005",
                ["descriptionKey"] = "battle_passive_skill_d_31005",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31005,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Burning",
                ["name_JA"] = "燃焼効果蓄積",
                ["description_EN"] = "Builds up burning on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に燃焼の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 31005,
                        ["passiveSkillId"] = 31005,
                        ["description"] = "[Enc] 燃焼蓄積 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1421,
                        ["effectVal"] = 40,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 73,
                        ["itemId"] = 30107001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31005,
                        ["enchant2SkillId"] = 31205,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Dragon Scale",
                        ["itemName_JA"] = "ドラゴンの鱗",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31102"] = {
            ["1.0.20"] = {
                ["id"] = 31102,
                ["nameKey"] = "battle_passive_skill_31102",
                ["descriptionKey"] = "battle_passive_skill_d_31102",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31102,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Freezing",
                ["name_JA"] = "凍結効果蓄積",
                ["description_EN"] = "Builds up freezing on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に凍結の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 31102,
                        ["passiveSkillId"] = 31102,
                        ["description"] = "[Enc] 凍結蓄積 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1431,
                        ["effectVal"] = 25,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 16,
                        ["itemId"] = 10102017,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31102,
                        ["enchant2SkillId"] = 31702,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Cooling Aloe",
                        ["itemName_JA"] = "ヒエアロエ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31104"] = {
            ["1.0.20"] = {
                ["id"] = 31104,
                ["nameKey"] = "battle_passive_skill_31104",
                ["descriptionKey"] = "battle_passive_skill_d_31104",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31104,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Accumulate Freezing",
                ["name_JA"] = "凍結効果蓄積",
                ["description_EN"] = "Builds up freezing on enemies when attacks land",
                ["description_JA"] = "攻撃がヒットした相手に凍結の効果を蓄積する",
                ["effects"] = {
                    {
                        ["id"] = 31104,
                        ["passiveSkillId"] = 31104,
                        ["description"] = "[Enc] 凍結蓄積 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1431,
                        ["effectVal"] = 35,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 29,
                        ["itemId"] = 10300908,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31104,
                        ["enchant2SkillId"] = 31703,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Bottle of Freezing",
                        ["itemName_JA"] = "凍結ビン",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31201"] = {
            ["1.0.20"] = {
                ["id"] = 31201,
                ["nameKey"] = "battle_passive_skill_31201",
                ["descriptionKey"] = "battle_passive_skill_d_31201",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31201,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Fire Damage",
                ["name_JA"] = "火属性追加",
                ["description_EN"] = "Applies fire damage to your attacks",
                ["description_JA"] = "攻撃に火属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31201,
                        ["passiveSkillId"] = 31201,
                        ["description"] = "[Enc] 火属性 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2101,
                        ["effectVal"] = 40,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 43,
                        ["itemId"] = 30101003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Flint",
                        ["itemName_JA"] = "火打石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 121,
                        ["itemId"] = 30307003,
                        ["actionSkillId"] = 20102,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Heat Slash",
                        ["itemName_JA"] = "エンチャント本：ヒートスラッシュ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 128,
                        ["itemId"] = 30307013,
                        ["actionSkillId"] = 20108,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact (Fire)",
                        ["itemName_JA"] = "item_material_30307013",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 134,
                        ["itemId"] = 30307021,
                        ["actionSkillId"] = 20114,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Inferno Flash",
                        ["itemName_JA"] = "エンチャント本：猛火一閃",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 140,
                        ["itemId"] = 30307029,
                        ["actionSkillId"] = 20120,
                        ["enchant1SkillId"] = 31201,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Scorching Thrust",
                        ["itemName_JA"] = "エンチャント本：灼火穿",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31202"] = {
            ["1.0.20"] = {
                ["id"] = 31202,
                ["nameKey"] = "battle_passive_skill_31202",
                ["descriptionKey"] = "battle_passive_skill_d_31202",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31202,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Fire Damage",
                ["name_JA"] = "火属性追加",
                ["description_EN"] = "Applies fire damage to your attacks",
                ["description_JA"] = "攻撃に火属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31202,
                        ["passiveSkillId"] = 31202,
                        ["description"] = "[Enc] 火属性 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2101,
                        ["effectVal"] = 70,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 10,
                        ["itemId"] = 10102007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31002,
                        ["enchant2SkillId"] = 31202,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Hakka Pepper",
                        ["itemName_JA"] = "ハッカペッパー",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 48,
                        ["itemId"] = 30101013,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30603,
                        ["enchant2SkillId"] = 31202,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Bombrock",
                        ["itemName_JA"] = "爆弾石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 114,
                        ["itemId"] = 30303001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31202,
                        ["enchant2SkillId"] = 31003,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Gunpowder",
                        ["itemName_JA"] = "火薬",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31203"] = {
            ["1.0.20"] = {
                ["id"] = 31203,
                ["nameKey"] = "battle_passive_skill_31203",
                ["descriptionKey"] = "battle_passive_skill_d_31203",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31203,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Fire Damage",
                ["name_JA"] = "火属性追加",
                ["description_EN"] = "Applies fire damage to your attacks",
                ["description_JA"] = "攻撃に火属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31203,
                        ["passiveSkillId"] = 31203,
                        ["description"] = "[Enc] 火属性 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2101,
                        ["effectVal"] = 100,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 15,
                        ["itemId"] = 10102016,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31004,
                        ["enchant2SkillId"] = 31203,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Flame Pepper",
                        ["itemName_JA"] = "フレイムペッパー",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 90,
                        ["itemId"] = 30200030,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31203,
                        ["enchant2SkillId"] = 30302,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Fire Slime Gel",
                        ["itemName_JA"] = "ファイアスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31204"] = {
            ["1.0.20"] = {
                ["id"] = 31204,
                ["nameKey"] = "battle_passive_skill_31204",
                ["descriptionKey"] = "battle_passive_skill_d_31204",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31204,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Fire Damage",
                ["name_JA"] = "火属性追加",
                ["description_EN"] = "Applies fire damage to your attacks",
                ["description_JA"] = "攻撃に火属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31204,
                        ["passiveSkillId"] = 31204,
                        ["description"] = "[Enc] 火属性 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2101,
                        ["effectVal"] = 150,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 55,
                        ["itemId"] = 30103005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31204,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Ruby Ore",
                        ["itemName_JA"] = "ルビー鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 91,
                        ["itemId"] = 30200031,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31204,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Fire Slime Core",
                        ["itemName_JA"] = "ファイアスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31205"] = {
            ["1.0.20"] = {
                ["id"] = 31205,
                ["nameKey"] = "battle_passive_skill_31205",
                ["descriptionKey"] = "battle_passive_skill_d_31205",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31205,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Fire Damage",
                ["name_JA"] = "火属性追加",
                ["description_EN"] = "Applies fire damage to your attacks",
                ["description_JA"] = "攻撃に火属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31205,
                        ["passiveSkillId"] = 31205,
                        ["description"] = "[Enc] 火属性 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2101,
                        ["effectVal"] = 200,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 60,
                        ["itemId"] = 30103012,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31205,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Ruby Ore",
                        ["itemName_JA"] = "輝くルビー鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 73,
                        ["itemId"] = 30107001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31005,
                        ["enchant2SkillId"] = 31205,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Dragon Scale",
                        ["itemName_JA"] = "ドラゴンの鱗",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31301"] = {
            ["1.0.20"] = {
                ["id"] = 31301,
                ["nameKey"] = "battle_passive_skill_31301",
                ["descriptionKey"] = "battle_passive_skill_d_31301",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31301,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Hydro Damage",
                ["name_JA"] = "水属性追加",
                ["description_EN"] = "Applies water damage to your attacks",
                ["description_JA"] = "攻撃に水属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31301,
                        ["passiveSkillId"] = 31301,
                        ["description"] = "[Enc] 水属性 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2102,
                        ["effectVal"] = 40,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 17,
                        ["itemId"] = 10104001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 31301,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Egg",
                        ["itemName_JA"] = "ニワトリの卵",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 122,
                        ["itemId"] = 30307004,
                        ["actionSkillId"] = 20103,
                        ["enchant1SkillId"] = 31301,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Mizuchi",
                        ["itemName_JA"] = "エンチャント本：ミズチ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 129,
                        ["itemId"] = 30307014,
                        ["actionSkillId"] = 20109,
                        ["enchant1SkillId"] = 31301,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact (Hydroo)",
                        ["itemName_JA"] = "item_material_30307014",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 135,
                        ["itemId"] = 30307022,
                        ["actionSkillId"] = 20115,
                        ["enchant1SkillId"] = 31301,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wavebreaker Surge",
                        ["itemName_JA"] = "エンチャント本：波状の太刀",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 141,
                        ["itemId"] = 30307030,
                        ["actionSkillId"] = 20121,
                        ["enchant1SkillId"] = 31301,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Hydro Shot",
                        ["itemName_JA"] = "エンチャント本：ハイドロショット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31303"] = {
            ["1.0.20"] = {
                ["id"] = 31303,
                ["nameKey"] = "battle_passive_skill_31303",
                ["descriptionKey"] = "battle_passive_skill_d_31303",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31303,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Hydro Damage",
                ["name_JA"] = "水属性追加",
                ["description_EN"] = "Applies water damage to your attacks",
                ["description_JA"] = "攻撃に水属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31303,
                        ["passiveSkillId"] = 31303,
                        ["description"] = "[Enc] 水属性 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2102,
                        ["effectVal"] = 100,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 80,
                        ["itemId"] = 30200007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31303,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Slime Gel",
                        ["itemName_JA"] = "スライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31304"] = {
            ["1.0.20"] = {
                ["id"] = 31304,
                ["nameKey"] = "battle_passive_skill_31304",
                ["descriptionKey"] = "battle_passive_skill_d_31304",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31304,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Hydro Damage",
                ["name_JA"] = "水属性追加",
                ["description_EN"] = "Applies water damage to your attacks",
                ["description_JA"] = "攻撃に水属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31304,
                        ["passiveSkillId"] = 31304,
                        ["description"] = "[Enc] 水属性 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2102,
                        ["effectVal"] = 150,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 81,
                        ["itemId"] = 30200008,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31304,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Slime Core",
                        ["itemName_JA"] = "スライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31305"] = {
            ["1.0.20"] = {
                ["id"] = 31305,
                ["nameKey"] = "battle_passive_skill_31305",
                ["descriptionKey"] = "battle_passive_skill_d_31305",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31305,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Hydro Damage",
                ["name_JA"] = "水属性追加",
                ["description_EN"] = "Applies water damage to your attacks",
                ["description_JA"] = "攻撃に水属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31305,
                        ["passiveSkillId"] = 31305,
                        ["description"] = "[Enc] 水属性 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2102,
                        ["effectVal"] = 200,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 89,
                        ["itemId"] = 30200029,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31305,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Huge Slime Core",
                        ["itemName_JA"] = "ヒュージスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31401"] = {
            ["1.0.20"] = {
                ["id"] = 31401,
                ["nameKey"] = "battle_passive_skill_31401",
                ["descriptionKey"] = "battle_passive_skill_d_31401",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31401,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Terra Damage",
                ["name_JA"] = "地属性追加",
                ["description_EN"] = "Applies earth damage to your attacks",
                ["description_JA"] = "攻撃に地属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31401,
                        ["passiveSkillId"] = 31401,
                        ["description"] = "[Enc] 地属性 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2105,
                        ["effectVal"] = 40,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 12,
                        ["itemId"] = 10102011,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Oily Seed Plant",
                        ["itemName_JA"] = "アブラナ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 41,
                        ["itemId"] = 30101001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30202,
                        ["enchant2SkillId"] = 31401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Stone",
                        ["itemName_JA"] = "石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 42,
                        ["itemId"] = 30101002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30001,
                        ["enchant2SkillId"] = 31401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Rubble",
                        ["itemName_JA"] = "クズ石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 44,
                        ["itemId"] = 30101004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30101,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Sand",
                        ["itemName_JA"] = "砂",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 45,
                        ["itemId"] = 30101005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Clay",
                        ["itemName_JA"] = "粘土",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 130,
                        ["itemId"] = 30307015,
                        ["actionSkillId"] = 20110,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Terra Shatter",
                        ["itemName_JA"] = "エンチャント本：地砕剣",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 136,
                        ["itemId"] = 30307023,
                        ["actionSkillId"] = 20116,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wave (Terra)",
                        ["itemName_JA"] = "item_material_30307023",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 142,
                        ["itemId"] = 30307031,
                        ["actionSkillId"] = 20122,
                        ["enchant1SkillId"] = 31401,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Beam (Terra)",
                        ["itemName_JA"] = "item_material_30307031",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31403"] = {
            ["1.0.20"] = {
                ["id"] = 31403,
                ["nameKey"] = "battle_passive_skill_31403",
                ["descriptionKey"] = "battle_passive_skill_d_31403",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31403,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Terra Damage",
                ["name_JA"] = "地属性追加",
                ["description_EN"] = "Applies earth damage to your attacks",
                ["description_JA"] = "攻撃に地属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31403,
                        ["passiveSkillId"] = 31403,
                        ["description"] = "[Enc] 地属性 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2105,
                        ["effectVal"] = 100,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 36,
                        ["itemId"] = 10405001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31403,
                        ["enchant2SkillId"] = 30303,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Fertilizer",
                        ["itemName_JA"] = "肥料",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 46,
                        ["itemId"] = 30101007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31403,
                        ["enchant2SkillId"] = 30503,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Plaster",
                        ["itemName_JA"] = "モルタル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 64,
                        ["itemId"] = 30104001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31403,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Resin",
                        ["itemName_JA"] = "樹脂",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 93,
                        ["itemId"] = 30200033,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31403,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Rock Slime Gel",
                        ["itemName_JA"] = "ロックスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31404"] = {
            ["1.0.20"] = {
                ["id"] = 31404,
                ["nameKey"] = "battle_passive_skill_31404",
                ["descriptionKey"] = "battle_passive_skill_d_31404",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31404,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Terra Damage",
                ["name_JA"] = "地属性追加",
                ["description_EN"] = "Applies earth damage to your attacks",
                ["description_JA"] = "攻撃に地属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31404,
                        ["passiveSkillId"] = 31404,
                        ["description"] = "[Enc] 地属性 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2105,
                        ["effectVal"] = 150,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 13,
                        ["itemId"] = 10102014,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31404,
                        ["enchant2SkillId"] = 30303,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Mandragora Root",
                        ["itemName_JA"] = "マンドラゴラの根",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 94,
                        ["itemId"] = 30200034,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31404,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Rock Slime Core",
                        ["itemName_JA"] = "ロックスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31405"] = {
            ["1.0.20"] = {
                ["id"] = 31405,
                ["nameKey"] = "battle_passive_skill_31405",
                ["descriptionKey"] = "battle_passive_skill_d_31405",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31405,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Terra Damage",
                ["name_JA"] = "地属性追加",
                ["description_EN"] = "Applies earth damage to your attacks",
                ["description_JA"] = "攻撃に地属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31405,
                        ["passiveSkillId"] = 31405,
                        ["description"] = "[Enc] 地属性 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2105,
                        ["effectVal"] = 200,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 78,
                        ["itemId"] = 30200005,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31405,
                        ["enchant2SkillId"] = 30605,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Golem Core",
                        ["itemName_JA"] = "ゴーレムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31501"] = {
            ["1.0.20"] = {
                ["id"] = 31501,
                ["nameKey"] = "battle_passive_skill_31501",
                ["descriptionKey"] = "battle_passive_skill_d_31501",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31501,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Wind Damage",
                ["name_JA"] = "風属性追加",
                ["description_EN"] = "Applies wind damage to your attacks",
                ["description_JA"] = "攻撃に風属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31501,
                        ["passiveSkillId"] = 31501,
                        ["description"] = "[Enc] 風属性 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2103,
                        ["effectVal"] = 40,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 17,
                        ["itemId"] = 10104001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 31301,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Egg",
                        ["itemName_JA"] = "ニワトリの卵",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 86,
                        ["itemId"] = 30200019,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30401,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Chicken Feather",
                        ["itemName_JA"] = "ニワトリの羽根",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 123,
                        ["itemId"] = 30307006,
                        ["actionSkillId"] = 20104,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wind Slash",
                        ["itemName_JA"] = "エンチャント本：風刃",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 131,
                        ["itemId"] = 30307016,
                        ["actionSkillId"] = 20111,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wind Burst",
                        ["itemName_JA"] = "エンチャント本：ウィンドバースト",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 137,
                        ["itemId"] = 30307024,
                        ["actionSkillId"] = 20117,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Wave (Wind)",
                        ["itemName_JA"] = "item_material_30307024",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 143,
                        ["itemId"] = 30307032,
                        ["actionSkillId"] = 20123,
                        ["enchant1SkillId"] = 31501,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Beam (Wind)",
                        ["itemName_JA"] = "item_material_30307032",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31503"] = {
            ["1.0.20"] = {
                ["id"] = 31503,
                ["nameKey"] = "battle_passive_skill_31503",
                ["descriptionKey"] = "battle_passive_skill_d_31503",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31503,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Wind Damage",
                ["name_JA"] = "風属性追加",
                ["description_EN"] = "Applies wind damage to your attacks",
                ["description_JA"] = "攻撃に風属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31503,
                        ["passiveSkillId"] = 31503,
                        ["description"] = "[Enc] 風属性 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2103,
                        ["effectVal"] = 100,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 95,
                        ["itemId"] = 30200035,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31503,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wind Slime Gel",
                        ["itemName_JA"] = "ウィンドスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31504"] = {
            ["1.0.20"] = {
                ["id"] = 31504,
                ["nameKey"] = "battle_passive_skill_31504",
                ["descriptionKey"] = "battle_passive_skill_d_31504",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31504,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Wind Damage",
                ["name_JA"] = "風属性追加",
                ["description_EN"] = "Applies wind damage to your attacks",
                ["description_JA"] = "攻撃に風属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31504,
                        ["passiveSkillId"] = 31504,
                        ["description"] = "[Enc] 風属性 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2103,
                        ["effectVal"] = 150,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 57,
                        ["itemId"] = 30103008,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31504,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Emerald Ore",
                        ["itemName_JA"] = "エメラルド鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 96,
                        ["itemId"] = 30200036,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31504,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Wind Slime Core",
                        ["itemName_JA"] = "ウィンドスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31505"] = {
            ["1.0.20"] = {
                ["id"] = 31505,
                ["nameKey"] = "battle_passive_skill_31505",
                ["descriptionKey"] = "battle_passive_skill_d_31505",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31505,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Wind Damage",
                ["name_JA"] = "風属性追加",
                ["description_EN"] = "Applies wind damage to your attacks",
                ["description_JA"] = "攻撃に風属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31505,
                        ["passiveSkillId"] = 31505,
                        ["description"] = "[Enc] 風属性 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2103,
                        ["effectVal"] = 200,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 62,
                        ["itemId"] = 30103014,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31505,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Emerald Ore",
                        ["itemName_JA"] = "輝くエメラルド鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31601"] = {
            ["1.0.20"] = {
                ["id"] = 31601,
                ["nameKey"] = "battle_passive_skill_31601",
                ["descriptionKey"] = "battle_passive_skill_d_31601",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31601,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Electric Damage",
                ["name_JA"] = "雷属性追加",
                ["description_EN"] = "Applies electric damage to your attacks",
                ["description_JA"] = "攻撃に雷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31601,
                        ["passiveSkillId"] = 31601,
                        ["description"] = "[Enc] 雷属性 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2104,
                        ["effectVal"] = 40,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 49,
                        ["itemId"] = 30102001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30502,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Copper Ore",
                        ["itemName_JA"] = "銅鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 124,
                        ["itemId"] = 30307007,
                        ["actionSkillId"] = 20105,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Soaring Slash (Electric)",
                        ["itemName_JA"] = "item_material_30307007",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 132,
                        ["itemId"] = 30307017,
                        ["actionSkillId"] = 20112,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact (Electric)",
                        ["itemName_JA"] = "item_material_30307017",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 138,
                        ["itemId"] = 30307025,
                        ["actionSkillId"] = 20118,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Thunder Clap",
                        ["itemName_JA"] = "エンチャント本：サンダークラップ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 144,
                        ["itemId"] = 30307033,
                        ["actionSkillId"] = 20124,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Plasma Ray",
                        ["itemName_JA"] = "エンチャント本：プラズマレイ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 146,
                        ["itemId"] = 30307037,
                        ["actionSkillId"] = 20128,
                        ["enchant1SkillId"] = 31601,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Raijin Slash",
                        ["itemName_JA"] = "エンチャント本：雷神斬り",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31602"] = {
            ["1.0.20"] = {
                ["id"] = 31602,
                ["nameKey"] = "battle_passive_skill_31602",
                ["descriptionKey"] = "battle_passive_skill_d_31602",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31602,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Electric Damage",
                ["name_JA"] = "雷属性追加",
                ["description_EN"] = "Applies electric damage to your attacks",
                ["description_JA"] = "攻撃に雷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31602,
                        ["passiveSkillId"] = 31602,
                        ["description"] = "[Enc] 雷属性 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2104,
                        ["effectVal"] = 70,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 111,
                        ["itemId"] = 30301002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31602,
                        ["enchant2SkillId"] = 30203,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Copper Ingot",
                        ["itemName_JA"] = "銅のインゴット",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31603"] = {
            ["1.0.20"] = {
                ["id"] = 31603,
                ["nameKey"] = "battle_passive_skill_31603",
                ["descriptionKey"] = "battle_passive_skill_d_31603",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31603,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Electric Damage",
                ["name_JA"] = "雷属性追加",
                ["description_EN"] = "Applies electric damage to your attacks",
                ["description_JA"] = "攻撃に雷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31603,
                        ["passiveSkillId"] = 31603,
                        ["description"] = "[Enc] 雷属性 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2104,
                        ["effectVal"] = 100,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 97,
                        ["itemId"] = 30200037,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31603,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Electric Slime Gel",
                        ["itemName_JA"] = "エレキスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31604"] = {
            ["1.0.20"] = {
                ["id"] = 31604,
                ["nameKey"] = "battle_passive_skill_31604",
                ["descriptionKey"] = "battle_passive_skill_d_31604",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31604,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Electric Damage",
                ["name_JA"] = "雷属性追加",
                ["description_EN"] = "Applies electric damage to your attacks",
                ["description_JA"] = "攻撃に雷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31604,
                        ["passiveSkillId"] = 31604,
                        ["description"] = "[Enc] 雷属性 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2104,
                        ["effectVal"] = 150,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 56,
                        ["itemId"] = 30103007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31604,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Topaz Ore",
                        ["itemName_JA"] = "トパーズ鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 98,
                        ["itemId"] = 30200038,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31604,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Electric Slime Core",
                        ["itemName_JA"] = "エレキスライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31605"] = {
            ["1.0.20"] = {
                ["id"] = 31605,
                ["nameKey"] = "battle_passive_skill_31605",
                ["descriptionKey"] = "battle_passive_skill_d_31605",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31605,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Electric Damage",
                ["name_JA"] = "雷属性追加",
                ["description_EN"] = "Applies electric damage to your attacks",
                ["description_JA"] = "攻撃に雷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31605,
                        ["passiveSkillId"] = 31605,
                        ["description"] = "[Enc] 雷属性 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2104,
                        ["effectVal"] = 200,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 61,
                        ["itemId"] = 30103013,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31605,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Topaz Ore",
                        ["itemName_JA"] = "輝くトパーズ鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31701"] = {
            ["1.0.20"] = {
                ["id"] = 31701,
                ["nameKey"] = "battle_passive_skill_31701",
                ["descriptionKey"] = "battle_passive_skill_d_31701",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31701,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Ice Damage",
                ["name_JA"] = "氷属性追加",
                ["description_EN"] = "Applies ice damage to your attacks",
                ["description_JA"] = "攻撃に氷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31701,
                        ["passiveSkillId"] = 31701,
                        ["description"] = "[Enc] 氷属性 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2106,
                        ["effectVal"] = 40,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 125,
                        ["itemId"] = 30307008,
                        ["actionSkillId"] = 20106,
                        ["enchant1SkillId"] = 31701,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Frost Edge",
                        ["itemName_JA"] = "エンチャント本：フロストエッジ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 133,
                        ["itemId"] = 30307018,
                        ["actionSkillId"] = 20113,
                        ["enchant1SkillId"] = 31701,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Impact (Ice)",
                        ["itemName_JA"] = "item_material_30307018",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 139,
                        ["itemId"] = 30307026,
                        ["actionSkillId"] = 20119,
                        ["enchant1SkillId"] = 31701,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Frostshard Dance",
                        ["itemName_JA"] = "エンチャント本：氷塊斬舞",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 145,
                        ["itemId"] = 30307034,
                        ["actionSkillId"] = 20125,
                        ["enchant1SkillId"] = 31701,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Enchant Tome: Glacial Thrust",
                        ["itemName_JA"] = "エンチャント本：グレイシャルスラスト",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31702"] = {
            ["1.0.20"] = {
                ["id"] = 31702,
                ["nameKey"] = "battle_passive_skill_31702",
                ["descriptionKey"] = "battle_passive_skill_d_31702",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31702,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Ice Damage",
                ["name_JA"] = "氷属性追加",
                ["description_EN"] = "Applies ice damage to your attacks",
                ["description_JA"] = "攻撃に氷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31702,
                        ["passiveSkillId"] = 31702,
                        ["description"] = "[Enc] 氷属性 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2106,
                        ["effectVal"] = 70,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 16,
                        ["itemId"] = 10102017,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31102,
                        ["enchant2SkillId"] = 31702,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Cooling Aloe",
                        ["itemName_JA"] = "ヒエアロエ",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31703"] = {
            ["1.0.20"] = {
                ["id"] = 31703,
                ["nameKey"] = "battle_passive_skill_31703",
                ["descriptionKey"] = "battle_passive_skill_d_31703",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31703,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Ice Damage",
                ["name_JA"] = "氷属性追加",
                ["description_EN"] = "Applies ice damage to your attacks",
                ["description_JA"] = "攻撃に氷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31703,
                        ["passiveSkillId"] = 31703,
                        ["description"] = "[Enc] 氷属性 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2106,
                        ["effectVal"] = 100,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 29,
                        ["itemId"] = 10300908,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31104,
                        ["enchant2SkillId"] = 31703,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Bottle of Freezing",
                        ["itemName_JA"] = "凍結ビン",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 99,
                        ["itemId"] = 30200039,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31703,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Ice Slime Gel",
                        ["itemName_JA"] = "アイススライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31704"] = {
            ["1.0.20"] = {
                ["id"] = 31704,
                ["nameKey"] = "battle_passive_skill_31704",
                ["descriptionKey"] = "battle_passive_skill_d_31704",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31704,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Ice Damage",
                ["name_JA"] = "氷属性追加",
                ["description_EN"] = "Applies ice damage to your attacks",
                ["description_JA"] = "攻撃に氷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31704,
                        ["passiveSkillId"] = 31704,
                        ["description"] = "[Enc] 氷属性 L",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2106,
                        ["effectVal"] = 150,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 54,
                        ["itemId"] = 30103004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31704,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Sapphire Ore",
                        ["itemName_JA"] = "サファイア鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 100,
                        ["itemId"] = 30200040,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31704,
                        ["enchant2SkillId"] = 30103,
                        ["cost"] = 3000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Ice Slime Core",
                        ["itemName_JA"] = "アイススライムコア",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31705"] = {
            ["1.0.20"] = {
                ["id"] = 31705,
                ["nameKey"] = "battle_passive_skill_31705",
                ["descriptionKey"] = "battle_passive_skill_d_31705",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31705,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Ice Damage",
                ["name_JA"] = "氷属性追加",
                ["description_EN"] = "Applies ice damage to your attacks",
                ["description_JA"] = "攻撃に氷属性ダメージを追加する",
                ["effects"] = {
                    {
                        ["id"] = 31705,
                        ["passiveSkillId"] = 31705,
                        ["description"] = "[Enc] 氷属性 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 2106,
                        ["effectVal"] = 200,
                        ["calcType"] = "Add",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 59,
                        ["itemId"] = 30103011,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31705,
                        ["enchant2SkillId"] = 30105,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 10,
                        ["itemName_EN"] = "Radiant Sapphire Ore",
                        ["itemName_JA"] = "輝くサファイア鉱石",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31801"] = {
            ["1.0.20"] = {
                ["id"] = 31801,
                ["nameKey"] = "battle_passive_skill_31801",
                ["descriptionKey"] = "battle_passive_skill_d_31801",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31801,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Magic Def. Up",
                ["name_JA"] = "特殊防御力アップ",
                ["description_EN"] = "Increases magic defense power",
                ["description_JA"] = "特殊防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 31801,
                        ["passiveSkillId"] = 31801,
                        ["description"] = "[Enc] 特殊防御力 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1108,
                        ["effectVal"] = 3,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 65,
                        ["itemId"] = 30104002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 31801,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Fiber",
                        ["itemName_JA"] = "繊維",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            },
            ["1.1.0"] = {
                ["id"] = 31801,
                ["nameKey"] = "battle_passive_skill_31801",
                ["descriptionKey"] = "battle_passive_skill_d_31801",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31801,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Special Def. Up",
                ["name_JA"] = "特殊防御力アップ",
                ["description_EN"] = "Increases special defense power",
                ["description_JA"] = "特殊防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 31801,
                        ["passiveSkillId"] = 31801,
                        ["description"] = "[Enc] 特殊防御力 XS",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1108,
                        ["effectVal"] = 3,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 65,
                        ["itemId"] = 30104002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30501,
                        ["enchant2SkillId"] = 31801,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Fiber",
                        ["itemName_JA"] = "繊維",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31802"] = {
            ["1.0.20"] = {
                ["id"] = 31802,
                ["nameKey"] = "battle_passive_skill_31802",
                ["descriptionKey"] = "battle_passive_skill_d_31802",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31802,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Magic Def. Up",
                ["name_JA"] = "特殊防御力アップ",
                ["description_EN"] = "Increases magic defense power",
                ["description_JA"] = "特殊防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 31802,
                        ["passiveSkillId"] = 31802,
                        ["description"] = "[Enc] 特殊防御力 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1108,
                        ["effectVal"] = 5,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 75,
                        ["itemId"] = 30200002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31802,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Beast Bone",
                        ["itemName_JA"] = "獣の骨",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 77,
                        ["itemId"] = 30200004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30202,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wool",
                        ["itemName_JA"] = "羊毛",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 80,
                        ["itemId"] = 30200007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31303,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Slime Gel",
                        ["itemName_JA"] = "スライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 93,
                        ["itemId"] = 30200033,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31403,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Rock Slime Gel",
                        ["itemName_JA"] = "ロックスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 95,
                        ["itemId"] = 30200035,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31503,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wind Slime Gel",
                        ["itemName_JA"] = "ウィンドスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 97,
                        ["itemId"] = 30200037,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31603,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Electric Slime Gel",
                        ["itemName_JA"] = "エレキスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 99,
                        ["itemId"] = 30200039,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31703,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Ice Slime Gel",
                        ["itemName_JA"] = "アイススライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 102,
                        ["itemId"] = 30300001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31802,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Paper",
                        ["itemName_JA"] = "紙",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 104,
                        ["itemId"] = 30300003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31802,
                        ["enchant2SkillId"] = 30501,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Thread",
                        ["itemName_JA"] = "糸",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 107,
                        ["itemId"] = 30300009,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Oil",
                        ["itemName_JA"] = "油",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            },
            ["1.1.0"] = {
                ["id"] = 31802,
                ["nameKey"] = "battle_passive_skill_31802",
                ["descriptionKey"] = "battle_passive_skill_d_31802",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31802,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Special Def. Up",
                ["name_JA"] = "特殊防御力アップ",
                ["description_EN"] = "Increases special defense power",
                ["description_JA"] = "特殊防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 31802,
                        ["passiveSkillId"] = 31802,
                        ["description"] = "[Enc] 特殊防御力 S",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1108,
                        ["effectVal"] = 5,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 75,
                        ["itemId"] = 30200002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31802,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Beast Bone",
                        ["itemName_JA"] = "獣の骨",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 77,
                        ["itemId"] = 30200004,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30202,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wool",
                        ["itemName_JA"] = "羊毛",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 80,
                        ["itemId"] = 30200007,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31303,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Slime Gel",
                        ["itemName_JA"] = "スライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 93,
                        ["itemId"] = 30200033,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31403,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Rock Slime Gel",
                        ["itemName_JA"] = "ロックスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 95,
                        ["itemId"] = 30200035,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31503,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Wind Slime Gel",
                        ["itemName_JA"] = "ウィンドスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 97,
                        ["itemId"] = 30200037,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31603,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Electric Slime Gel",
                        ["itemName_JA"] = "エレキスライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 99,
                        ["itemId"] = 30200039,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31703,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Ice Slime Gel",
                        ["itemName_JA"] = "アイススライムジェル",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 102,
                        ["itemId"] = 30300001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31802,
                        ["enchant2SkillId"] = 30001,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Paper",
                        ["itemName_JA"] = "紙",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 104,
                        ["itemId"] = 30300003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31802,
                        ["enchant2SkillId"] = 30501,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Thread",
                        ["itemName_JA"] = "糸",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 107,
                        ["itemId"] = 30300009,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30502,
                        ["enchant2SkillId"] = 31802,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Oil",
                        ["itemName_JA"] = "油",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31803"] = {
            ["1.0.20"] = {
                ["id"] = 31803,
                ["nameKey"] = "battle_passive_skill_31803",
                ["descriptionKey"] = "battle_passive_skill_d_31803",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31803,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Magic Def. Up",
                ["name_JA"] = "特殊防御力アップ",
                ["description_EN"] = "Increases magic defense power",
                ["description_JA"] = "特殊防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 31803,
                        ["passiveSkillId"] = 31803,
                        ["description"] = "[Enc] 特殊防御力 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1108,
                        ["effectVal"] = 10,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 66,
                        ["itemId"] = 30104003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31803,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Cotton",
                        ["itemName_JA"] = "綿花",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 113,
                        ["itemId"] = 30302001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31803,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Cloth",
                        ["itemName_JA"] = "布",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 115,
                        ["itemId"] = 30304001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30002,
                        ["enchant2SkillId"] = 31803,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Glass",
                        ["itemName_JA"] = "ガラス",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            },
            ["1.1.0"] = {
                ["id"] = 31803,
                ["nameKey"] = "battle_passive_skill_31803",
                ["descriptionKey"] = "battle_passive_skill_d_31803",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31803,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Special Def. Up",
                ["name_JA"] = "特殊防御力アップ",
                ["description_EN"] = "Increases special defense power",
                ["description_JA"] = "特殊防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 31803,
                        ["passiveSkillId"] = 31803,
                        ["description"] = "[Enc] 特殊防御力 M",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1108,
                        ["effectVal"] = 10,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 66,
                        ["itemId"] = 30104003,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31803,
                        ["enchant2SkillId"] = 30301,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Cotton",
                        ["itemName_JA"] = "綿花",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 113,
                        ["itemId"] = 30302001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31803,
                        ["enchant2SkillId"] = 30201,
                        ["cost"] = 100,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 1,
                        ["itemName_EN"] = "Cloth",
                        ["itemName_JA"] = "布",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    },
                    {
                        ["id"] = 115,
                        ["itemId"] = 30304001,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 30002,
                        ["enchant2SkillId"] = 31803,
                        ["cost"] = 500,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 2,
                        ["itemName_EN"] = "Glass",
                        ["itemName_JA"] = "ガラス",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        },
        ["31805"] = {
            ["1.0.20"] = {
                ["id"] = 31805,
                ["nameKey"] = "battle_passive_skill_31805",
                ["descriptionKey"] = "battle_passive_skill_d_31805",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31805,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Magic Def. Up",
                ["name_JA"] = "特殊防御力アップ",
                ["description_EN"] = "Increases magic defense power",
                ["description_JA"] = "特殊防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 31805,
                        ["passiveSkillId"] = 31805,
                        ["description"] = "[Enc] 特殊防御力 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1108,
                        ["effectVal"] = 20,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 53,
                        ["itemId"] = 30103002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31805,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Diamond",
                        ["itemName_JA"] = "ダイヤモンド",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            },
            ["1.1.0"] = {
                ["id"] = 31805,
                ["nameKey"] = "battle_passive_skill_31805",
                ["descriptionKey"] = "battle_passive_skill_d_31805",
                ["iconAddress"] = "Mace_128",
                ["group"] = 31805,
                ["rarity"] = 1,
                ["enableOff"] = 0,
                ["name_EN"] = "Special Def. Up",
                ["name_JA"] = "特殊防御力アップ",
                ["description_EN"] = "Increases special defense power",
                ["description_JA"] = "特殊防御力が上がる",
                ["effects"] = {
                    {
                        ["id"] = 31805,
                        ["passiveSkillId"] = 31805,
                        ["description"] = "[Enc] 特殊防御力 XL",
                        ["conditionType1"] = 1,
                        ["conditionValue1"] = "0",
                        ["conditionType2"] = 0,
                        ["conditionValue2"] = "0",
                        ["effetType"] = 1108,
                        ["effectVal"] = 20,
                        ["calcType"] = "Mul",
                        ["additionalVal1"] = "０",
                        ["additionalVal2"] = "０",
                        ["additionalVal3"] = "０"
                    }
                },
                ["source_items"] = {
                    {
                        ["id"] = 53,
                        ["itemId"] = 30103002,
                        ["actionSkillId"] = 0,
                        ["enchant1SkillId"] = 31805,
                        ["enchant2SkillId"] = 30104,
                        ["cost"] = 10000,
                        ["catalystItemId"] = 30200032,
                        ["catalystItemNum"] = 5,
                        ["itemName_EN"] = "Diamond",
                        ["itemName_JA"] = "ダイヤモンド",
                        ["catalystItemName_EN"] = "Element",
                        ["catalystItemName_JA"] = "エレメント"
                    }
                }
            }
        }
    }
}