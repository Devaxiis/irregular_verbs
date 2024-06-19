

import 'package:irregular_verbs/src/domain/models/main_model.dart';

sealed class DataBase{

  static List<MainModel> appDataBase = [
   MainModel(past:"arose", present: "arise", future: "arise", translate: "langArise"),
   MainModel(past:"awoke", present: "awake", future: "awoken", translate: "langAwake"),
   MainModel(past:"was/were", present: "be", future: "been", translate: "langBe"),
   MainModel(past:"beat", present: "beat", future: "beaten", translate: "langBeat"),
   MainModel(past:"became", present: "become", future: "become", translate: "langBecome"),
   MainModel(present: "begin", past: "began", future: "begun", translate: "langBegin"),
   MainModel(present: "bend", past: "bent", future: "bent", translate: "langBend"),
   MainModel(present: "bite", past: "bit", future: "bitten", translate: "langBite"),
   MainModel(present: "bet", past: "bet", future: "bet", translate: "langBet"),
   MainModel(present: "bleed", past: "bled", future: "bled", translate: "langBleed"),
   MainModel(present: "blow", past: "blew", future: "blown", translate: "langBlow"),
   MainModel(present: "break", past: "broke", future: "broken", translate: "langBreak"),
   MainModel(present: "bring", past: "brought", future: "brought", translate: "langBring"),
   MainModel(present: "bring", past: "brought", future: "brought", translate: "lang"),
   MainModel(past:"broadcast", present: "broadcast", future: "broadcast", translate: "langBroadcast"),
   MainModel(past:"built", present: "build", future: "built", translate: "langBuild"),
   MainModel(past:"burnt", present: "burn", future: "burn", translate: "langBurn"),
   MainModel(past:"burst", present: "burst", future: "burst", translate: "langBurst"),
   MainModel(past:"bought", present: "buy", future: "bought", translate: "langBuy"),
   MainModel(past:"caught", present: "catch", future: "caught", translate: "langCatch"),
   MainModel(past:"chose", present: "choose", future: "chosen", translate: "langChoose"),
   MainModel(past:"came", present: "come", future: "come", translate: "langCome"),
   MainModel(past:"cost", present: "cost", future: "cost", translate: "langCost"),
   MainModel(past:"crept", present: "creep", future: "crept", translate: "langCreep"),
   MainModel(past:"cut", present: "cut", future: "cut", translate: "langCut"),
   MainModel(present: "deal", past: "dealt", future: "dealt", translate: "langDeal"),
   MainModel(present: "dig", past: "dug", future: "dug", translate: "langDig"),
   MainModel(present: "do", past: "did", future: "done", translate: "langDo"),
   MainModel(present: "draw", past: "drew", future: "drawn", translate: "langDraw"),
   MainModel(past:"dreamt", present: "dream", future: "dreamt", translate: "langDreamt"),
   MainModel(present: "drink", past: "drank", future: "drunk", translate: "langDink"),
   MainModel(present: "drive", past: "drove", future: "driven", translate: "langDrive"),
   MainModel(present: "eat", past: "ate", future: "eaten", translate: "langEat"),
   MainModel(present: "fall", past: "fell", future: "fallen", translate: "langFall"),
   MainModel(present: "feed", past: "fed", future: "fed", translate: "langFeed"),
   MainModel(present: "feel", past: "felt", future: "felt", translate: "langFeel"),
   MainModel(present: "fight", past: "fought", future: "fought", translate: "langFight"),
   MainModel(present: "find", past: "found", future: "found", translate: "langFind"),
   MainModel(present: "fly", past: "flew", future: "flown", translate: "langFly"),
   MainModel(present: "forbid", past: "forbade", future: "forbidden", translate: "langForbid"),
   MainModel(present: "forget", past: "forgot", future: "forgotten", translate: "langForget"),
   MainModel(present: "forgive", past: "forgave", future: "forgiven", translate: "langForgive"),
   MainModel(present: "freeze", past: "froze", future: "frozen", translate: "langFreeze"),
   MainModel(present: "get", past: "got", future: "got", translate: "langGet"),
   MainModel(present: "give", past: "gave", future: "given", translate: "langGive"),
   MainModel(present: "go", past: "went", future: "gone", translate: "langGo"),
   MainModel(present: "grow", past: "grew", future: "grown", translate: "langGrow"),
   MainModel(present: "hang", past: "hung", future: "hung", translate: "langHang"),
   MainModel(present: "have", past: "had", future: "had", translate: "langHave"),
   MainModel(present: "hear", past: "heard", future: "heard", translate: "langHear"),
   MainModel(present: "hide", past: "hid", future: "hidden", translate: "langHide"),
   MainModel(present: "hit", past: "hit", future: "hit", translate: "langHit"),
   MainModel(present: "hold", past: "held", future: "held", translate: "langHold"),
   MainModel(present: "hurt", past: "hurt", future: "hurt", translate: "langHurt"),
   MainModel(present: "keep", past: "kept", future: "kept", translate: "langKeep"),
   MainModel(present: "kneel", past: "knelt", future: "knelt", translate: "langKneel"),
   MainModel(present: "know", past: "knew", future: "known", translate: "langKnow"),
   MainModel(present: "lay", past: "laid", future: "laid", translate: "langLay"),
   MainModel(present: "lead", past: "led", future: "led", translate: "langLead"),
   MainModel(present: "lean", past: "leant", future: "leant", translate: "langLean"),
   MainModel(present: "let", past: "let", future: "let", translate: "langLet"),
   MainModel(present: "lie", past: "lay", future: "lain", translate: "langLie"),
   MainModel(present: "light", past: "lit", future: "lit", translate: "langLight"),
   MainModel(present: "lose", past: "lost", future: "lost", translate: "langLose"),
   MainModel(present: "make", past: "made", future: "made", translate: "langMake"),
   MainModel(present: "mean", past: "meant", future: "meant", translate: "langMean"),
   MainModel(present: "meet", past: "met", future: "met", translate: "langMeet"),
   MainModel(present: "pay", past: "paid", future: "paid", translate: "langPay"),
   MainModel(present: "put", past: "put", future: "put", translate: "langPut"),
   MainModel(present: "read", past: "read", future: "read", translate: "langRead"),
   MainModel(present: "ride", past: "rode", future: "ridden", translate: "langRide"),
   MainModel(present: "ring", past: "rang", future: "rung", translate: "langRing"),
   MainModel(present: "rise", past: "rose", future: "risen", translate: "langRise"),
   MainModel(present: "run", past: "ran", future: "run", translate: "langRun"),
   MainModel(present: "say", past: "said", future: "said", translate: "langSay"),
   MainModel(present: "see", past: "saw", future: "seen", translate: "langSee"),
   MainModel(present: "sell", past: "sold", future: "sold", translate: "langSell"),
   MainModel(present: "send", past: "sent", future: "sent", translate: "langSend"),
   MainModel(present: "set", past: "set", future: "set", translate: "langSet"),
   MainModel(present: "sew", past: "sewed", future: "sewn", translate: "langSew"),
   MainModel(present: "shake", past: "shook", future: "shaken", translate: "langShake"),
   MainModel(present: "shine", past: "shone", future: "shone", translate: "langShine"),
   MainModel(present: "shoot", past: "shot", future: "shot", translate: "langShoot"),
   MainModel(present: "show", past: "showed", future: "shown", translate: "langShow"),
   MainModel(present: "shrink", past: "shrank", future: "shrunk", translate: "langShrink"),
   MainModel(present: "shut", past: "shut", future: "shut", translate: "langShut"),
   MainModel(present: "sing", past: "sang", future: "sung", translate: "langSing"),
   MainModel(present: "sink", past: "sank", future: "sunk", translate: "langSink"),
   MainModel(present: "sit", past: "sat", future: "sat", translate: "langSit"),
   MainModel(present: "sleep", past: "slept", future: "slept", translate: "langSleep"),
   MainModel(present: "slide", past: "slid", future: "slid", translate: "langSlide"),
   MainModel(present: "smell", past: "smelt", future: "smelt", translate: "langSmell"),
   MainModel(present: "sow", past: "sowed", future: "sown", translate: "langSow"),
   MainModel(present: "speak", past: "spoke", future: "spoken", translate: "langSpeak"),
   MainModel(present: "spell", past: "spelt/spelled", future: "spelt/spelled", translate: "langSpell"),
   MainModel(present: "spend", past: "spent", future: "spent", translate: "langSpend"),
   MainModel(present: "spill", past: "spilt", future: "spilt", translate: "langSpill"),
   MainModel(present: "spit", past: "spat", future: "spat", translate: "langSpit"),
   MainModel(present: "split", past: "split", future: "split", translate: "langSplit"),
   MainModel(present: "spoil", past: "spoilt", future: "spoilt", translate: "langSpoil"),
   MainModel(present: "spread", past: "spread", future: "spread", translate: "langSpread"),
   MainModel(present: "spring", past: "sprang", future: "sprung", translate: "langSpring"),
   MainModel(present: "stand", past: "stood", future: "stood", translate: "langStand"),
   MainModel(present: "steal", past: "stole", future: "stolen", translate: "langSteal"),
   MainModel(present: "stick", past: "stuck", future: "stuck", translate: "langStick"),
   MainModel(present: "sting", past: "stung", future: "stung", translate: "langSting"),
   MainModel(present: "strike", past: "struck", future: "struck", translate: "langStrike"),
   MainModel(present: "swear", past: "swore", future: "sworn", translate: "langSwear"),
   MainModel(present: "swell", past: "swelled", future: "swollen", translate: "langSwell"),
   MainModel(present: "swim", past: "swam", future: "swum", translate: "langSwim"),
   MainModel(present: "swing", past: "swung", future: "swung", translate: "langSwing"),
   MainModel(present: "teach", past: "taught", future: "taught", translate: "langTeach"),
   MainModel(present: "tear", past: "tore", future: "torn", translate: "langTear"),
   MainModel(present: "tell", past: "told", future: "told", translate: "langTell"),
   MainModel(present: "think", past: "thought", future: "thought", translate: "langThink"),
   MainModel(present: "throw", past: "threw", future: "thrown", translate: "langThrow"),
   MainModel(present: "understand", past: "understood", future: "understood", translate: "langUnderstand"),
   MainModel(present: "wake", past: "woke", future: "woken", translate: "langWake"),
   MainModel(present: "wear", past: "wore", future: "worn", translate: "langWear"),
   MainModel(present: "weep", past: "wept", future: "wept", translate: "langWeep"),
   MainModel(present: "win", past: "won", future: "won", translate: "langWin"),
   MainModel(present: "write", past: "wrote", future: "written", translate: "langWrite"),
  ];

}