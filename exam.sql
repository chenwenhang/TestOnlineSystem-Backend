/*
 Navicat Premium Data Transfer

 Source Server         : Local_MongoDB
 Source Server Type    : MongoDB
 Source Server Version : 40008
 Source Host           : localhost:27017
 Source Schema         : exam

 Target Server Type    : MongoDB
 Target Server Version : 40008
 File Encoding         : 65001

 Date: 08/11/2019 16:14:08
*/


// ----------------------------
// Collection structure for occupation
// ----------------------------
db.getCollection("occupation").drop();
db.createCollection("occupation");

// ----------------------------
// Documents of occupation
// ----------------------------
db.getCollection("occupation").insert([ {
    _id: ObjectId("5caedf8c63c1340d646764c8"),
    occupation: "AI工程师",
    tag: [
        "Maths",
        "Algorithm"
    ],
    _values: [
        "AI工程师",
        [
            "algorithm",
            "maths"
        ],
        ""
    ]
} ]);
db.getCollection("occupation").insert([ {
    _id: ObjectId("5cb184fad19b953fc0c93934"),
    occupation: "Java工程师",
    tag: [
        "Java",
        "MySQL"
    ],
    _values: [
        "JAVA工程师",
        [
            "java"
        ],
        ""
    ]
} ]);
db.getCollection("occupation").insert([ {
    _id: ObjectId("5cbc1a0b2f486701e8e6d7af"),
    occupation: "数据库工程师",
    tag: [
        "MySQL",
        "MSSQL",
        "Oracle"
    ]
} ]);
db.getCollection("occupation").insert([ {
    _id: ObjectId("5cbc1aca2f486701e8e6d7b3"),
    occupation: "安卓工程师",
    tag: [
        "Android",
        "Java",
        "MySQL"
    ]
} ]);
db.getCollection("occupation").insert([ {
    _id: ObjectId("5cbc1ad82f486701e8e6d7b4"),
    occupation: "IOS工程师",
    tag: [
        "IOS",
        "MySQL"
    ]
} ]);
db.getCollection("occupation").insert([ {
    _id: ObjectId("5cc2ee0b3b1bee114c959c30"),
    occupation: "C语言工程师",
    tag: [
        "C++",
        "C",
        "C#"
    ]
} ]);
db.getCollection("occupation").insert([ {
    _id: ObjectId("5cc2ee1d3b1bee114c959c31"),
    occupation: "移动开发工程师",
    tag: [
        "Java",
        "IOS"
    ]
} ]);
db.getCollection("occupation").insert([ {
    _id: ObjectId("5cc2ee3a3b1bee114c959c32"),
    occupation: "Python工程师",
    tag: [
        "python"
    ]
} ]);
db.getCollection("occupation").insert([ {
    _id: ObjectId("5cd129ec50e42d2c744975bf"),
    occupation: "测试工程师",
    tag: [
        "C++",
        "PHP",
        "C"
    ]
} ]);

// ----------------------------
// Collection structure for paper
// ----------------------------
db.getCollection("paper").drop();
db.createCollection("paper");

// ----------------------------
// Documents of paper
// ----------------------------
db.getCollection("paper").insert([ {
    _id: ObjectId("5cae0693fdc8fc2dc09d03e4"),
    title: "知识图谱学习测试卷",
    instructions: "本试卷开考前绝密，希望各位同学认真作答！",
    "create_user": "administrator",
    occupation: "AI工程师",
    questions: [
        {
            _id: ObjectId("5cae01c0fdc8fc2dc09d03e1"),
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘 ",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "Maths",
                "Algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: "100"
        }
    ],
    "start_time": "2019-04-13 02:11:38",
    "create_time": "2019-04-10 02:11:38",
    "end_time": "2019-05-15 02:11:38",
    duration: NumberInt("90"),
    "passing_mark": NumberInt("60"),
    "total_mark": "0100",
    token: [
        "admin"
    ],
    "is_valid": true,
    "is_public": true,
    _values: [
        {
            text: "知识图谱学习测试卷",
            org: "知识图谱学习测试卷"
        },
        {
            text: "administrator",
            org: "administrator"
        },
        {
            text: "AI工程师",
            org: "AI工程师"
        },
        {
            text: "2019-04-10 02:11:38",
            org: "2019-04-10 02:11:38"
        },
        {
            text: true,
            org: true
        },
        {
            text: true,
            org: true
        },
        {
            text: ""
        }
    ]
} ]);
db.getCollection("paper").insert([ {
    _id: ObjectId("5cb19f69e282b92d785bf24b"),
    title: "数据挖掘测试卷",
    instructions: "本试卷开考前绝密，希望各位同学认真作答！",
    "create_user": "administrator",
    occupation: "AI工程师",
    questions: [
        {
            _id: ObjectId("5cae01c0fdc8fc2dc09d03e1"),
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘 ",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "Maths",
                "Algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: "100"
        }
    ],
    "start_time": "2019-04-13 02:11:38",
    "create_time": "2019-04-10 02:11:38",
    "end_time": "2019-05-24 02:11:38",
    duration: NumberInt("90"),
    "passing_mark": NumberInt("60"),
    "total_mark": "0100",
    token: [
        "admin"
    ],
    "is_valid": false,
    "is_public": false,
    _values: [
        {
            text: "数据挖掘测试卷",
            org: "数据挖掘测试卷"
        },
        {
            text: "administrator",
            org: "administrator"
        },
        {
            text: "AI工程师",
            org: "AI工程师"
        },
        {
            text: "2019-04-10 02:11:38",
            org: "2019-04-10 02:11:38"
        },
        {
            text: false,
            org: false
        },
        {
            text: false,
            org: false
        },
        {
            text: ""
        }
    ]
} ]);
db.getCollection("paper").insert([ {
    _id: ObjectId("5cbdca0b48a49a4c14889fad"),
    title: "测试例题",
    instructions: "淡淡的",
    occupation: "Java工程师",
    "is_valid": true,
    "is_public": false,
    "start_time": "2019-04-20 22:04:35",
    "end_time": "2019-05-23 22:04:35",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: ObjectId("5cae01c0fdc8fc2dc09d03e1"),
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘 ",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "Maths",
                "Algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: NumberInt("100")
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-22 22:04:58",
    _values: [
        {
            text: "测试例题",
            org: "测试例题"
        },
        {
            text: "administrator",
            org: "administrator"
        },
        {
            text: "Java工程师",
            org: "Java工程师"
        },
        {
            text: "2019-04-22 22:04:58",
            org: "2019-04-22 22:04:58"
        },
        {
            text: true,
            org: true
        },
        {
            text: false,
            org: false
        },
        {
            text: ""
        }
    ]
} ]);
db.getCollection("paper").insert([ {
    _id: ObjectId("5cc03433c5d5520cd071a067"),
    title: "常识测试卷",
    instructions: "用来测试常识的试卷",
    occupation: "AI工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-24 18:00:44",
    "end_time": "2019-05-21 18:00:46",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: ObjectId("5cc02250c5d5520cd071a062"),
            type: "判断题",
            content: "你认为JavaScript是世界上最好的语言吗？",
            right: "A",
            tag: [
                "JavaScript"
            ],
            explanation: "自己领悟",
            "create_time": "2019-04-24 16:46:07",
            score: NumberInt("20")
        },
        {
            _id: ObjectId("5cc022fec5d5520cd071a063"),
            type: "多选题",
            content: "以下哪些是水果？",
            analysis: [
                "香蕉",
                "苹果",
                "洋葱",
                "西瓜",
                "菠萝"
            ],
            right: "A,B,D,E",
            tag: [
                "常识"
            ],
            explanation: "这是常识",
            "create_time": "2019-04-24 16:49:01",
            _values: [
                "以下哪些是水果？",
                "多选题",
                [
                    "IOS"
                ],
                "2019-04-24 16:49:01",
                ""
            ],
            score: NumberInt("20")
        },
        {
            _id: ObjectId("5cc02398c5d5520cd071a065"),
            type: "排序题",
            content: "请给以下数字按照由小到大排序",
            analysis: [
                "1",
                "3",
                "4",
                "2",
                "5"
            ],
            right: "A,D,B,C,E",
            tag: [
                "常识"
            ],
            explanation: "常识",
            "create_time": "2019-04-24 16:51:35",
            score: NumberInt("20")
        },
        {
            _id: ObjectId("5cae01c0fdc8fc2dc09d03e1"),
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘 ",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "Maths",
                "Algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: NumberInt("20")
        },
        {
            _id: ObjectId("5cc033c3c5d5520cd071a066"),
            type: "填空题",
            content: "莫忘少年凌云志，下一句是____________？",
            right: "曽许天下第一流",
            tag: [
                "常识"
            ],
            "create_time": "2019-04-24 18:00:34",
            score: NumberInt("20")
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-24 18:02:26"
} ]);
db.getCollection("paper").insert([ {
    _id: ObjectId("5cc2eded3b1bee114c959c2f"),
    title: "Java工程师模拟卷",
    instructions: "认真作答！",
    occupation: "Java工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-26 19:37:26",
    "end_time": "2019-04-28 19:37:26",
    "total_mark": NumberInt("25"),
    questions: [
        {
            _id: ObjectId("5cbfe42c9923576288f5eb5d"),
            type: "单选题",
            content: "驾驶人违反交通运输管理法规发生重大事故后，因逃逸致人死亡的，处多少年有期徒刑？",
            right: "D",
            analysis: [
                "2年以下",
                "3年以下",
                "7年以下",
                "7年以上"
            ],
            explanation: "要看清题目致人死亡的是不是因为逃逸造成的，如果是那就是7年以上。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5eb5f"),
            type: "单选题",
            content: "这个标志是何含义？",
            right: "D",
            analysis: [
                "高速公路救援电话号码",
                "高速公路服务电话号码",
                "高速公路报警电话号码",
                "高速公路交通广播频率"
            ],
            explanation: "高速公路交通广播频率：用以指示收听高速公路或城市快速路交通信息广播的频率，可在适当地点设置，根据需要可重复设置。查看高速公路标志大全：http://www.jszks.com/onepage/16721.html",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5eb5d"),
            type: "单选题",
            content: "驾驶人违反交通运输管理法规发生重大事故后，因逃逸致人死亡的，处多少年有期徒刑？",
            right: "D",
            analysis: [
                "2年以下",
                "3年以下",
                "7年以下",
                "7年以上"
            ],
            explanation: "要看清题目致人死亡的是不是因为逃逸造成的，如果是那就是7年以上。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 19:39:25"
} ]);
db.getCollection("paper").insert([ {
    _id: ObjectId("5cc2f5d63b1bee114c959c37"),
    title: "IOS测试卷",
    instructions: "这是IOS测试卷",
    occupation: "IOS工程师",
    "is_valid": true,
    "is_public": false,
    "start_time": "2019-04-26 20:12:32",
    "end_time": "2019-05-23 20:12:32",
    "total_mark": NumberInt("1"),
    questions: [
        {
            _id: ObjectId("5cbfe42c9923576288f5eb71"),
            type: "单选题",
            content: "这个标志是何含义？",
            right: "B",
            analysis: [
                "路面不平",
                "路面低洼",
                "路面高突",
                "有驼峰桥"
            ],
            explanation: "路面低洼：用以提醒车辆驾驶人减速慢行。设在路面突然低洼以前适当位置。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("1")
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 20:13:10"
} ]);
db.getCollection("paper").insert([ {
    _id: ObjectId("5cc2f6063b1bee114c959c38"),
    title: "移动开发测试卷",
    instructions: "这是移动开发测试卷",
    occupation: "移动开发工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-26 20:13:15",
    "end_time": "2019-05-23 20:13:15",
    "total_mark": NumberInt("60"),
    questions: [
        {
            _id: ObjectId("5cbfe42c9923576288f5eb6e"),
            type: "单选题",
            content: "指示标志的作用是什么？",
            right: "D",
            analysis: [
                "告知方向信息",
                "警告前方危险",
                "限制车辆、行人通行",
                "指示车辆、行人行进"
            ],
            explanation: "指示标志是交通标志中主要标志的一种，用以指示车辆和行人按规定方向、地点行驶。 指示标志的颜色为蓝底、白图案；形状分为圆形、长方形和正方形。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5ebcf"),
            type: "单选题",
            content: "图中圈内的路面标记是什么标线？",
            right: "A",
            analysis: [
                "人行横道线",
                "减速让行线",
                "停车让行线",
                "路口示意线"
            ],
            explanation: "人行横道 小孩子都知道的",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50")
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 20:13:58"
} ]);
db.getCollection("paper").insert([ {
    _id: ObjectId("5cc2f6593b1bee114c959c39"),
    title: "编程语言基础测试卷",
    instructions: "这是编程语言基础测试卷",
    occupation: "数据库工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-26 20:14:43",
    "end_time": "2019-05-31 20:14:44",
    "total_mark": NumberInt("10"),
    questions: [
        {
            _id: ObjectId("5cbfe42c9923576288f5ebc0"),
            type: "单选题",
            content: "下雨后路面湿滑，车辆行驶中紧急制动时，容易导致什么？",
            right: "A",
            analysis: [
                "发生侧滑、引发交通事故",
                "因视线模糊而撞车",
                "不被其他车辆驾驶人发现",
                "引起发动机熄火"
            ],
            explanation: "给大伙上个关于水的物理课：在粗糙的物体表面有能摸的着的水时，水会减小摩擦；在粗糙的物体表面有极少的（摸不到，有湿润感觉）水时，会增加物体表面的粗糙程度增大摩擦力－－如：数钞票时，在手上沾上些水，数钱数的又快又准等。！！！下雨天不是数钱，别急刹了我个亲！急刹加打方向－－你会成为漂移达人的！！",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 20:15:21"
} ]);
db.getCollection("paper").insert([ {
    _id: ObjectId("5cc2f6b53b1bee114c959c3a"),
    title: "汇编测试卷",
    instructions: "这是汇编测试卷",
    occupation: "数据库工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-26 20:16:20",
    "end_time": "2019-05-30 20:16:20",
    "total_mark": NumberInt("30"),
    questions: [
        {
            _id: ObjectId("5cbfe42c9923576288f5ebc2"),
            type: "单选题",
            content: "驾驶机动车通过铁路道口时，最高速度不能超过多少？",
            right: "C",
            analysis: [
                "15公里/小时",
                "20公里/小时",
                "30公里/小时",
                "40公里/小时"
            ],
            explanation: "规定：驾驶机动车通过铁路道口时，最高速度不能超过30公里/小时",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5eb60"),
            type: "单选题",
            content: "提供虚假材料申领驾驶证的申请人会承担下列哪种法律责任？",
            right: "C",
            analysis: [
                "处20元以上200元以下罚款",
                "取消申领驾驶证资格",
                "1年内不得再次申领驾驶证",
                "2年内不能再次申领驾驶证"
            ],
            explanation: "《机动车驾驶证申领和使用规定》（公安部令第123号）第七十八条  隐瞒有关情况或者提供虚假材料申领机动车驾驶证的，申请人在一年内不得再次申领机动车驾驶证。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20")
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 20:16:53"
} ]);
db.getCollection("paper").insert([ {
    _id: ObjectId("5cc2f90e3b1bee114c959c3b"),
    title: "驾照考试",
    instructions: "假的驾照考试",
    occupation: "C语言工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-26 20:23:25",
    "end_time": "2019-05-31 20:23:25",
    "total_mark": NumberInt("130"),
    questions: [
        {
            _id: ObjectId("5cbfd5e26abe7e3200477d27"),
            type: "单选题",
            content: "微机硬件系统中最核心的部件是 ____ 。",
            analysis: [
                "内存储器",
                "输入输出设备",
                "CPU",
                "硬盘"
            ],
            right: "C",
            tag: [
                "计算机组成原理"
            ],
            explanation: "",
            "create_time": "2019-04-24 11:20:01",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5eb6c"),
            type: "单选题",
            content: "这个标志是何含义？",
            right: "C",
            analysis: [
                "旅游区距离",
                "旅游区类别",
                "旅游区方向",
                "旅游区符号"
            ],
            explanation: "快到云居寺了，箭头指的是方向",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5eb6b"),
            type: "单选题",
            content: "准驾车型为小型自动挡汽车的，可以驾驶以下哪种车型？",
            right: "D",
            analysis: [
                "低速载货汽车",
                "小型汽车",
                "二轮摩托车",
                "轻型自动挡载货汽车"
            ],
            explanation: "小型自动挡汽车（C2）准驾车型：小型、微型自动挡载客汽车以及轻型、微型自动挡载货汽车",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5eb8a"),
            type: "单选题",
            content: "以下哪种违法行为的机动车驾驶人将被一次记6分？",
            right: "C",
            analysis: [
                "驾驶与准驾车型不符的机动车",
                "车速超过规定时速50%以上",
                "驾驶机动车违反道路交通信号灯",
                "未取得校车驾驶资格驾驶校车"
            ],
            explanation: "机动车驾驶员有下列违章行为之一的，一次记6分:(一)不按规定停车或者车辆发生故障不立即将车移开，造成交通严重堵塞的；(二)逆向行驶的；(三)饮酒后驾驶车辆的；(四)驾车穿插、超越警车护卫的车队的；(五)驾驶与驾驶证准驾车型不相符合的车辆的；(六)驾车下陡坡时熄火、空挡滑行的；(七)行经铁路道口不按规定行车或者停车的；(八)客车载人超过核定人数20%以上的；(九)在高速公路上客车载人超过核定人数的；(十)在高速公路上货车载物超过核定载质量30%以上的；(十一)在高速公路上不按规定超车或者变更车道的；(十二)在高速公路上驾驶转向器、制动器、灯光装置等机件不符合安全要求的车辆的；(十三)在高速公路上载运危险物品未经审批或者未按规定行驶的。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5ebbb"),
            type: "单选题",
            content: "泥泞道路对安全行车的主要影响是什么？",
            right: "B",
            analysis: [
                "行驶阻力变小",
                "车轮极易滑转和侧滑",
                "能见度低，视野模糊",
                "路面附着力增大"
            ],
            explanation: "泥泞路面特别松软和粘稠，车辆行驶阻力大，附着力减小，车轮极易划转和侧滑。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5ebcb"),
            type: "单选题",
            content: "雨天行车，遇撑雨伞和穿雨衣的行人在公路上行走时，应怎样做？",
            right: "C",
            analysis: [
                "持续鸣喇叭示意其让道",
                "加速绕行",
                "提前鸣喇叭，并适当降低车速",
                "以正常速度行驶"
            ],
            explanation: "只有C最和谐。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5ebc3"),
            type: "单选题",
            content: "这位驾驶人违反法律规定的行为是什么？",
            right: "C",
            analysis: [
                "没按规定握转向盘",
                "座椅角度不对",
                "没系安全带",
                "驾驶姿势不正确"
            ],
            explanation: "这个妹子没系安全带。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5ebca"),
            type: "单选题",
            content: "行车中遇儿童时，应怎样做？",
            right: "A",
            analysis: [
                "减速慢行，必要时停车避让",
                "长鸣喇叭催促",
                "迅速从一侧通过",
                "加速绕行"
            ],
            explanation: "请尊老爱幼。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5ebc1"),
            type: "单选题",
            content: "路两侧的车行道边缘白色实线是什么含义？",
            right: "B",
            analysis: [
                "车辆可临时跨越",
                "禁止车辆跨越",
                "机动车可临时跨越",
                "非机动车可临时跨越"
            ],
            explanation: "白虚线不可以跨越",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5eb66"),
            type: "单选题",
            content: "这个标志是何含义？",
            right: "B",
            analysis: [
                "向左单行路",
                "向右单行路",
                "直行单行路",
                "右转让行"
            ],
            explanation: "表示一切车辆向右单向行驶。此标志设在单行路的路口和入口处的适当位置。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5ebc9"),
            type: "单选题",
            content: "驾驶车辆行至道路急转弯处，应怎样做？",
            right: "C",
            analysis: [
                "急剧制动低速通过",
                "靠弯道外侧行驶",
                "充分减速并靠右侧行驶",
                "借对向车道行驶"
            ],
            explanation: "安全第一，过急转弯当然要减低车速，靠右行驶是为了防止急转弯另一边有车过来导致两车相撞。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5eb64"),
            type: "单选题",
            content: "如图所示，驾驶机动车遇到这种情况时，以下做法正确的是什么？ ",
            right: "B",
            analysis: [
                "应减速观察水情，然后加速行驶通过",
                "应停车察明水情，确认安全后，低速通过",
                "应停车察明水情，确认安全后，快速通过",
                "可随意通行"
            ],
            explanation: "机动车在有积水较深的桥下通过行车时，应当停车察明水情，确认安全后，低速通过。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        },
        {
            _id: ObjectId("5cbfe42c9923576288f5ebb5"),
            type: "单选题",
            content: "机动车在高速公路上发生故障时错误的做法是什么？",
            right: "B",
            analysis: [
                "按规定设置警告标志",
                "车上人员不能下车",
                "迅速报警",
                "开启危险报警闪光灯"
            ],
            explanation: "车上的人员应该立即撤到安全栏外。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10")
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 20:26:54"
} ]);

// ----------------------------
// Collection structure for paper_history
// ----------------------------
db.getCollection("paper_history").drop();
db.createCollection("paper_history");

// ----------------------------
// Documents of paper_history
// ----------------------------
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc160c2f5620c7e8009490d"),
    title: "常识测试卷",
    instructions: "用来测试常识的试卷",
    occupation: "AI工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-24 18:00:44",
    "end_time": "2019-05-21 18:00:46",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cc02250c5d5520cd071a062",
            type: "判断题",
            content: "你认为JavaScript是世界上最好的语言吗？",
            right: "A",
            tag: [
                "JavaScript"
            ],
            explanation: "自己领悟",
            "create_time": "2019-04-24 16:46:07",
            score: NumberInt("20"),
            answer: "A"
        },
        {
            _id: "5cc022fec5d5520cd071a063",
            type: "多选题",
            content: "以下哪些是水果？",
            analysis: [
                "香蕉",
                "苹果",
                "洋葱",
                "西瓜",
                "菠萝"
            ],
            right: "A,B,D,E",
            tag: [
                "常识"
            ],
            explanation: "这是常识",
            "create_time": "2019-04-24 16:49:01",
            _values: [
                "以下哪些是水果？",
                "多选题",
                [
                    "IOS"
                ],
                "2019-04-24 16:49:01",
                ""
            ],
            score: NumberInt("20"),
            answer: "A,B,D,E"
        },
        {
            _id: "5cc02398c5d5520cd071a065",
            type: "排序题",
            content: "请给以下数字按照由小到大排序",
            analysis: [
                "1",
                "3",
                "4",
                "2",
                "5"
            ],
            right: "A,D,B,C,E",
            tag: [
                "常识"
            ],
            explanation: "常识",
            "create_time": "2019-04-24 16:51:35",
            score: NumberInt("20"),
            answer: "A,D,B,C,E"
        },
        {
            _id: "5cae01c0fdc8fc2dc09d03e1",
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘 ",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "Maths",
                "Algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        },
        {
            _id: "5cc033c3c5d5520cd071a066",
            type: "填空题",
            content: "莫忘少年凌云志，下一句是____________？",
            right: "曽许天下第一流",
            tag: [
                "常识"
            ],
            "create_time": "2019-04-24 18:00:34",
            score: NumberInt("20"),
            answer: "曽许天下第一流"
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-24 18:02:26",
    _values: [
        "常识测试卷",
        "administrator",
        "AI工程师",
        "2019-04-24 18:02:26",
        ""
    ],
    username: "administrator",
    "my_mark": NumberInt("100")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc16168f5620c7e8009490e"),
    title: "2019-04-25 15:27:24 常识 模拟考试",
    "create_time": "2019-04-25 15:27:24",
    instructions: "常识",
    "create_user": "administrator",
    "start_time": "2019-04-25 15:27:24",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cc02398c5d5520cd071a065",
            type: "排序题",
            content: "请给以下数字按照由小到大排序",
            analysis: [
                "1",
                "3",
                "4",
                "2",
                "5"
            ],
            right: "A,D,B,C,E",
            tag: [
                "常识"
            ],
            explanation: "常识",
            "create_time": "2019-04-24 16:51:35",
            score: NumberInt("100"),
            answer: "A,D,B,C,E"
        }
    ],
    "end_time": "2019-04-25 15:27:34",
    username: "administrator",
    "my_mark": NumberInt("100")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc193323b74308fcc07db9c"),
    title: "常识测试卷",
    instructions: "用来测试常识的试卷",
    occupation: "AI工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-24 18:00:44",
    "end_time": "2019-05-21 18:00:46",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cc02250c5d5520cd071a062",
            type: "判断题",
            content: "你认为JavaScript是世界上最好的语言吗？",
            right: "A",
            tag: [
                "JavaScript"
            ],
            explanation: "自己领悟",
            "create_time": "2019-04-24 16:46:07",
            score: NumberInt("20"),
            answer: "A"
        },
        {
            _id: "5cc022fec5d5520cd071a063",
            type: "多选题",
            content: "以下哪些是水果？",
            analysis: [
                "香蕉",
                "苹果",
                "洋葱",
                "西瓜",
                "菠萝"
            ],
            right: "A,B,D,E",
            tag: [
                "常识"
            ],
            explanation: "这是常识",
            "create_time": "2019-04-24 16:49:01",
            _values: [
                "以下哪些是水果？",
                "多选题",
                [
                    "IOS"
                ],
                "2019-04-24 16:49:01",
                ""
            ],
            score: NumberInt("20"),
            answer: "A,B,D,E"
        },
        {
            _id: "5cc02398c5d5520cd071a065",
            type: "排序题",
            content: "请给以下数字按照由小到大排序",
            analysis: [
                "1",
                "3",
                "4",
                "2",
                "5"
            ],
            right: "A,D,B,C,E",
            tag: [
                "常识"
            ],
            explanation: "常识",
            "create_time": "2019-04-24 16:51:35",
            score: NumberInt("20"),
            answer: "A,B,C"
        },
        {
            _id: "5cae01c0fdc8fc2dc09d03e1",
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘 ",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "Maths",
                "Algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        },
        {
            _id: "5cc033c3c5d5520cd071a066",
            type: "填空题",
            content: "莫忘少年凌云志，下一句是____________？",
            right: "曽许天下第一流",
            tag: [
                "常识"
            ],
            "create_time": "2019-04-24 18:00:34",
            score: NumberInt("20"),
            answer: "曽许天下第一流"
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-24 18:02:26",
    _values: [
        "常识测试卷",
        "administrator",
        "AI工程师",
        "2019-04-24 18:02:26",
        ""
    ],
    username: "administrator",
    "my_mark": NumberInt("80")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc1d1a2c3258093c4b1243d"),
    title: "2019-04-25 23:26:16 驾照考试 模拟考试",
    "create_time": "2019-04-25 23:26:16",
    instructions: "驾照考试",
    "create_user": "administrator",
    "start_time": "2019-04-25 23:26:16",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb80",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "C",
            analysis: [
                "高速公路右侧出口预告",
                "高速公路下一出口预告",
                "高速公路地点、方向预告",
                "高速公路左侧出口预告"
            ],
            explanation: "高速公路地点、方向预告：用于指示高速公路或城市快速路两个行驶方向，设在驶入高速公路或城市快速路的匝道分岔点处。在目的地信息之上，可增加前往高速公路的编号信息。查看高速公路标志大全：http://www.jszks.com/onepage/16721.html",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "A"
        },
        {
            _id: "5cbfe42c9923576288f5eb74",
            type: "单选题",
            content: "山区道路对安全行车的主要影响是什么？",
            right: "B",
            analysis: [
                "交通情况单一",
                "坡长弯急，视距不足",
                "车流密度大",
                "道路标志少"
            ],
            explanation: "最关键的一点是山区道路行驶时不容易掌握周围情况，也就是所谓视距不足。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "B"
        },
        {
            _id: "5cbfe42c9923576288f5eba1",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "D",
            analysis: [
                "T型路口",
                "分流路口",
                "减速通行",
                "此路不通"
            ],
            explanation: "用以指示前方道路为死胡同，无出口、不能通行。该标志为蓝底白色街区红色图案。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb67",
            type: "单选题",
            content: "这一组交通警察手势是什么信号？",
            right: "D",
            analysis: [
                "减速慢行信号",
                "靠边停车信号",
                "停止信号",
                "右转弯信号"
            ],
            explanation: "手势题详解：http://www.jszks.com/onepage/16203.html",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "D"
        },
        {
            _id: "5cbfe42c9923576288f5eb92",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "A",
            analysis: [
                "停车领卡",
                "停车缴费",
                "ETC通道",
                "停车检查"
            ],
            explanation: "停车领卡：用以提示停车领卡，设在进入高速公路或城市快速路收费站入口一侧的适当位置。查看高速公路标志大全：http://www.jszks.com/onepage/16721.html",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "A"
        }
    ],
    "end_time": "2019-04-25 23:26:25",
    username: "administrator",
    "my_mark": NumberInt("60")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc2901fdd33c000f0351193"),
    title: "2019-04-26 12:58:34 驾照考试 模拟考试",
    "create_time": "2019-04-26 12:58:34",
    instructions: "驾照考试",
    "create_user": "administrator",
    "start_time": "2019-04-26 12:58:34",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb77",
            type: "单选题",
            content: "夜间车辆通过照明条件良好的路段时，应使用什么灯？",
            right: "C",
            analysis: [
                "危险报警闪光灯",
                "远光灯",
                "近光灯",
                "雾灯"
            ],
            explanation: "直接解释大家可能难以转过弯来，我们先反过来看这题！夜间车辆通过照明条件不良好的路段时应使用--? 答案：远光灯。照明不良好就是看不见远近路段，当然是打开远光灯，看的更远更清楚，相反照明良好时，也就是说远近处，我们都能看的见，当然是打开近光灯最为保险。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebb1",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "A",
            analysis: [
                "右转车道",
                "掉头车道",
                "左转车道",
                "分向车道"
            ],
            explanation: "表示只准一切车辆向右转弯。此标志设在车辆必须向右转弯的路口以前适当位置。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eba2",
            type: "单选题",
            content: "行车中超越右侧停放的车辆时，为预防其突然起步或开启车门，应怎样做？",
            right: "D",
            analysis: [
                "加速通过",
                "长鸣喇叭",
                "保持正常速度行驶",
                "预留出横向安全距离，减速行驶"
            ],
            explanation: "留出安全距离、并减速，万一右侧车辆启动才有足够的空间和时间避让！",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebd9",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "B",
            analysis: [
                "直行和掉头合用车道",
                "直行和左转合用车道",
                "直行和右转车道",
                "分向行驶车道"
            ],
            explanation: "表示只准一切车辆直行和向左转弯。此标志设在车辆必须直行和向左转弯的路口以前适当位置。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb8b",
            type: "单选题",
            content: "这个路面标记是什么标线？",
            right: "C",
            analysis: [
                "禁驶区",
                "网状线",
                "中心圈",
                "导流线"
            ],
            explanation: "中心圈，设置在交叉路口中心的白色圆形或菱形区域，用以区分车辆大、小转弯，及交叉路口车辆左右转弯的指示，车辆不得压线行驶。机动车向左转弯时，必须紧靠中心圈小转弯。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb95",
            type: "单选题",
            content: "驾驶车辆在交叉路口前变更车道时，应怎样驶入要变更的车道？",
            right: "D",
            analysis: [
                "在路口前实线区内根据需要",
                "进入路口实线区内",
                "在路口停止线前",
                "在虚线区按导向箭头指示"
            ],
            explanation: "当然是在未到人行道前按导向标识了，要不都到人行道边上了，怎么改变车道。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb97",
            type: "单选题",
            content: "红色圆圈内标线含义是什么？",
            right: "B",
            analysis: [
                "临时停靠站",
                "港湾式停靠站",
                "应急停车带",
                "公交车停靠站"
            ],
            explanation: "请记住",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb68",
            type: "单选题",
            content: "有下列哪种违法行为的机动车驾驶人将被一次记6分？",
            right: "A",
            analysis: [
                "驾驶机动车违反道路交通信号灯",
                "未取得校车驾驶资格驾驶校车",
                "驾驶与准驾车型不符的机动车",
                "饮酒后驾驶机动车"
            ],
            explanation: "闯灯的一次6分。B,C,D都是一次记12分。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb82",
            type: "单选题",
            content: "路口最前端的双白实线是什么含义？",
            right: "A",
            analysis: [
                "停车让行线",
                "减速让行线",
                "左弯待转线",
                "等候放行线"
            ],
            explanation: "停车让行线是在没有信号灯状态下。停止线是遇有信号灯红灯时表示车辆等候放行信号的位置,不能超越或压此线。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb9b",
            type: "单选题",
            content: "在这段高速公路上行驶的最低车速是多少？",
            right: "C",
            analysis: [
                "100公里/小时",
                "80公里/小时",
                "60公里/小时",
                "50公里/小时"
            ],
            explanation: "图片上那个蓝色的牌子60就是最低车速。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb96",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "B",
            analysis: [
                "右侧是下坡路段",
                "靠右侧道路行驶",
                "靠道路右侧停车",
                "只准向右转弯"
            ],
            explanation: "靠右侧道路行驶：表示只准一切车辆靠右侧道路行驶。此标志设在车辆必须靠右侧行驶的路口以前适当位置。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebb3",
            type: "单选题",
            content: "这位驾驶人违反法律规定的行为是什么？",
            right: "C",
            analysis: [
                "没按规定握转向盘",
                "座椅角度不对",
                "没系安全带",
                "驾驶姿势不正确"
            ],
            explanation: "这个妹子没系安全带。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebc5",
            type: "单选题",
            content: "这个开关控制机动车哪个部位？",
            right: "B",
            analysis: [
                "风窗玻璃除雾器",
                "风窗玻璃刮水器",
                "危险报警闪光灯",
                "照明、信号装置"
            ],
            explanation: "这个控制风窗玻璃刮水器的，木问题。风窗玻璃除雾器和危险报警闪光灯都是按钮形式的，照明、信号装置在你的左手边。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eba8",
            type: "单选题",
            content: "遇前方路段车道减少，车辆行驶缓慢，为保证安全有序应该怎样做？",
            right: "A",
            analysis: [
                "依次交替通行",
                "穿插到前方排队车辆中通过",
                "加速从前车左右超越",
                "借对向车道迅速通过"
            ],
            explanation: "第五十三条：机动车在车道减少的路口、路段，遇有前方机动车停车排队等候或者缓慢行驶的，应当每车道一辆依次交替驶入车道减少后的路口、路段。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebc0",
            type: "单选题",
            content: "下雨后路面湿滑，车辆行驶中紧急制动时，容易导致什么？",
            right: "A",
            analysis: [
                "发生侧滑、引发交通事故",
                "因视线模糊而撞车",
                "不被其他车辆驾驶人发现",
                "引起发动机熄火"
            ],
            explanation: "给大伙上个关于水的物理课：在粗糙的物体表面有能摸的着的水时，水会减小摩擦；在粗糙的物体表面有极少的（摸不到，有湿润感觉）水时，会增加物体表面的粗糙程度增大摩擦力－－如：数钞票时，在手上沾上些水，数钱数的又快又准等。！！！下雨天不是数钱，别急刹了我个亲！急刹加打方向－－你会成为漂移达人的！！",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb8e",
            type: "单选题",
            content: "机动车驾驶人有以下哪种违法行为的，暂扣六个月机动车驾驶证？",
            right: "C",
            analysis: [
                "醉酒后驾驶机动车的",
                "伪造、变造机动车驾驶证的",
                "饮酒后驾驶机动车的",
                "使用伪造、变造机动车驾驶证的"
            ],
            explanation: "饮酒驾驶机动车辆，罚款1000元―2000元、记12分并暂扣驾照6个月；饮酒驾驶营运机动车，罚款5000元，记12分，处以15日以下拘留，并且5年内不得重新获得驾照。醉酒驾驶机动车辆，吊销驾照，5年内不得重新获取驾照，经过判决后处以拘役，并处罚金；醉酒驾驶营运机动车辆，吊销驾照，10年内不得重新获取驾照，终生不得驾驶营运车辆，经过判决后处以拘役，并处罚金。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb7c",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "C",
            analysis: [
                "两侧通行",
                "右侧通行",
                "左侧通行",
                "不准通行"
            ],
            explanation: "用于引导行车方向，提示道路使用者前方线形变化，注意谨慎驾驶。设于中央隔离设施端部、渠化设施的端部、桥头等。答题技巧：∧表示俩侧通行，/这个方向的表示左侧通行，这个方向表示右侧通行。交通指路标志大全：http://www.jszks.com/onepage/16752.html",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb5e",
            type: "单选题",
            content: "机动车仪表板上（如图所示）亮表示什么？",
            right: "A",
            analysis: [
                "防抱死制动系统故障",
                "驻车制动器处于解除状态",
                "行车制动系统故障",
                "安全气囊处于故障状态"
            ],
            explanation: "ABS就是防抱死制动系统",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebd4",
            type: "单选题",
            content: "机动车在高速公路上发生故障或交通事故无法正常行驶时由什么车拖曳或牵引？",
            right: "D",
            analysis: [
                "过路车",
                "大客车",
                "同行车",
                "清障车"
            ],
            explanation: "应该有专门的清障车来拖拽和牵引。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebd0",
            type: "单选题",
            content: "机动车购买后尚未注册登记，需要临时上道路行驶的，可以凭什么临时上道路行驶？",
            right: "B",
            analysis: [
                "合法来源凭证",
                "临时行驶车号牌",
                "借用的机动车号牌",
                "法人单位证明"
            ],
            explanation: "准予机动车临时上道路行驶的纸质机动车号牌，也称临时行驶车号牌。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("5"),
            answer: "C"
        }
    ],
    "end_time": "2019-04-26 12:59:10",
    username: "administrator",
    "my_mark": NumberInt("30")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc290bbdd33c000f0351198"),
    title: "2019-04-26 13:01:36 驾照考试 模拟考试",
    "create_time": "2019-04-26 13:01:36",
    instructions: "驾照考试",
    "create_user": "administrator",
    "start_time": "2019-04-26 13:01:36",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb9b",
            type: "单选题",
            content: "在这段高速公路上行驶的最低车速是多少？",
            right: "C",
            analysis: [
                "100公里/小时",
                "80公里/小时",
                "60公里/小时",
                "50公里/小时"
            ],
            explanation: "图片上那个蓝色的牌子60就是最低车速。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "D"
        },
        {
            _id: "5cbfe42c9923576288f5ebbc",
            type: "单选题",
            content: "这属于哪一种标志？",
            right: "A",
            analysis: [
                "旅游区标志",
                "作业区标志",
                "告示标志",
                "高速公路标志"
            ],
            explanation: "旅游区方向：设在通往旅游区各连接道路的交叉口处。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "D"
        },
        {
            _id: "5cbfe42c9923576288f5eb87",
            type: "单选题",
            content: "如图所示，驾驶机动车遇到这种情况，以下做法正确的是什么？",
            right: "C",
            analysis: [
                "长鸣喇叭催促行人快速通过",
                "开启远光灯警示行人有车辆驶近",
                "降低行驶速度，避让行人",
                "适当加速从行人前方绕行"
            ],
            explanation: "驾驶机动车遇到图中这种情况，应当降低行驶速度，避让行人。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "D"
        },
        {
            _id: "5cbfe42c9923576288f5eb90",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "B",
            analysis: [
                "大型客车专用车道",
                "公交线路专用车道",
                "快速公交系统专用车道",
                "多乘员车辆专用车道"
            ],
            explanation: "此为公交线路专用车道，与快速公交系统专用车道的区别是少了“快速公交”四个字。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "D"
        },
        {
            _id: "5cbfe42c9923576288f5eb77",
            type: "单选题",
            content: "夜间车辆通过照明条件良好的路段时，应使用什么灯？",
            right: "C",
            analysis: [
                "危险报警闪光灯",
                "远光灯",
                "近光灯",
                "雾灯"
            ],
            explanation: "直接解释大家可能难以转过弯来，我们先反过来看这题！夜间车辆通过照明条件不良好的路段时应使用--? 答案：远光灯。照明不良好就是看不见远近路段，当然是打开远光灯，看的更远更清楚，相反照明良好时，也就是说远近处，我们都能看的见，当然是打开近光灯最为保险。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "D"
        }
    ],
    "end_time": "2019-04-26 13:01:45",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc2943520d41441b45bfa06"),
    title: "常识测试卷",
    instructions: "用来测试常识的试卷",
    occupation: "AI工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-24 18:00:44",
    "end_time": "2019-05-21 18:00:46",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cc02250c5d5520cd071a062",
            type: "判断题",
            content: "你认为JavaScript是世界上最好的语言吗？",
            right: "A",
            tag: [
                "JavaScript"
            ],
            explanation: "自己领悟",
            "create_time": "2019-04-24 16:46:07",
            score: NumberInt("20"),
            answer: "B"
        },
        {
            _id: "5cc022fec5d5520cd071a063",
            type: "多选题",
            content: "以下哪些是水果？",
            analysis: [
                "香蕉",
                "苹果",
                "洋葱",
                "西瓜",
                "菠萝"
            ],
            right: "A,B,D,E",
            tag: [
                "常识"
            ],
            explanation: "这是常识",
            "create_time": "2019-04-24 16:49:01",
            _values: [
                "以下哪些是水果？",
                "多选题",
                [
                    "IOS"
                ],
                "2019-04-24 16:49:01",
                ""
            ],
            score: NumberInt("20"),
            answer: "A,B,D,E"
        },
        {
            _id: "5cc02398c5d5520cd071a065",
            type: "排序题",
            content: "请给以下数字按照由小到大排序",
            analysis: [
                "1",
                "3",
                "4",
                "2",
                "5"
            ],
            right: "A,D,B,C,E",
            tag: [
                "常识"
            ],
            explanation: "常识",
            "create_time": "2019-04-24 16:51:35",
            score: NumberInt("20"),
            answer: "A,B,C"
        },
        {
            _id: "5cae01c0fdc8fc2dc09d03e1",
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘 ",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "Maths",
                "Algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        },
        {
            _id: "5cc033c3c5d5520cd071a066",
            type: "填空题",
            content: "莫忘少年凌云志，下一句是____________？",
            right: "曽许天下第一流",
            tag: [
                "常识"
            ],
            "create_time": "2019-04-24 18:00:34",
            score: NumberInt("20"),
            answer: "曽许天下第一流"
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-24 18:02:26",
    _values: [
        "常识测试卷",
        "administrator",
        "AI工程师",
        "2019-04-24 18:02:26",
        ""
    ],
    username: "administrator",
    "my_mark": NumberInt("60")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc294af1eb87326ace2d7cc"),
    title: "常识测试卷",
    instructions: "用来测试常识的试卷",
    occupation: "AI工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-24 18:00:44",
    "end_time": "2019-05-21 18:00:46",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cc02250c5d5520cd071a062",
            type: "判断题",
            content: "你认为JavaScript是世界上最好的语言吗？",
            right: "A",
            tag: [
                "JavaScript"
            ],
            explanation: "自己领悟",
            "create_time": "2019-04-24 16:46:07",
            score: NumberInt("20"),
            answer: "B"
        },
        {
            _id: "5cc022fec5d5520cd071a063",
            type: "多选题",
            content: "以下哪些是水果？",
            analysis: [
                "香蕉",
                "苹果",
                "洋葱",
                "西瓜",
                "菠萝"
            ],
            right: "A,B,D,E",
            tag: [
                "常识"
            ],
            explanation: "这是常识",
            "create_time": "2019-04-24 16:49:01",
            _values: [
                "以下哪些是水果？",
                "多选题",
                [
                    "IOS"
                ],
                "2019-04-24 16:49:01",
                ""
            ],
            score: NumberInt("20"),
            answer: "A,B,D,E"
        },
        {
            _id: "5cc02398c5d5520cd071a065",
            type: "排序题",
            content: "请给以下数字按照由小到大排序",
            analysis: [
                "1",
                "3",
                "4",
                "2",
                "5"
            ],
            right: "A,D,B,C,E",
            tag: [
                "常识"
            ],
            explanation: "常识",
            "create_time": "2019-04-24 16:51:35",
            score: NumberInt("20"),
            answer: "A,B,C"
        },
        {
            _id: "5cae01c0fdc8fc2dc09d03e1",
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘 ",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "Maths",
                "Algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        },
        {
            _id: "5cc033c3c5d5520cd071a066",
            type: "填空题",
            content: "莫忘少年凌云志，下一句是____________？",
            right: "曽许天下第一流",
            tag: [
                "常识"
            ],
            "create_time": "2019-04-24 18:00:34",
            score: NumberInt("20"),
            answer: "曽许天下第一流"
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-24 18:02:26",
    _values: [
        "常识测试卷",
        "administrator",
        "AI工程师",
        "2019-04-24 18:02:26",
        ""
    ],
    username: "administrator",
    "my_mark": NumberInt("60")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc2e9dc3b1bee114c959c2d"),
    title: "2019-04-26 19:22:01 驾照考试 模拟考试",
    "create_time": "2019-04-26 19:22:01",
    instructions: "驾照考试",
    "create_user": "administrator",
    "start_time": "2019-04-26 19:22:01",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5ebd5",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "B",
            analysis: [
                "海关检查",
                "停车检查",
                "边防检查",
                "禁止通行"
            ],
            explanation: "停车检查：表示机动车必须停车接受检查。此标志设在关卡将近处，以便要求车辆接受检查或缴费等手续。标志中可加注说明检查事项。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("100"),
            answer: "C"
        }
    ],
    "end_time": "2019-04-26 19:22:04",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc2f9303b1bee114c959c3c"),
    title: "驾照考试",
    instructions: "假的驾照考试",
    occupation: "C语言工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-26 20:23:25",
    "end_time": "2019-05-31 20:23:25",
    "total_mark": NumberInt("130"),
    questions: [
        {
            _id: "5cbfd5e26abe7e3200477d27",
            type: "单选题",
            content: "微机硬件系统中最核心的部件是 ____ 。",
            analysis: [
                "内存储器",
                "输入输出设备",
                "CPU",
                "硬盘"
            ],
            right: "C",
            tag: [
                "计算机组成原理"
            ],
            explanation: "",
            "create_time": "2019-04-24 11:20:01",
            score: NumberInt("10"),
            answer: "D"
        },
        {
            _id: "5cbfe42c9923576288f5eb6c",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "C",
            analysis: [
                "旅游区距离",
                "旅游区类别",
                "旅游区方向",
                "旅游区符号"
            ],
            explanation: "快到云居寺了，箭头指的是方向",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "D"
        },
        {
            _id: "5cbfe42c9923576288f5eb6b",
            type: "单选题",
            content: "准驾车型为小型自动挡汽车的，可以驾驶以下哪种车型？",
            right: "D",
            analysis: [
                "低速载货汽车",
                "小型汽车",
                "二轮摩托车",
                "轻型自动挡载货汽车"
            ],
            explanation: "小型自动挡汽车（C2）准驾车型：小型、微型自动挡载客汽车以及轻型、微型自动挡载货汽车",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb8a",
            type: "单选题",
            content: "以下哪种违法行为的机动车驾驶人将被一次记6分？",
            right: "C",
            analysis: [
                "驾驶与准驾车型不符的机动车",
                "车速超过规定时速50%以上",
                "驾驶机动车违反道路交通信号灯",
                "未取得校车驾驶资格驾驶校车"
            ],
            explanation: "机动车驾驶员有下列违章行为之一的，一次记6分:(一)不按规定停车或者车辆发生故障不立即将车移开，造成交通严重堵塞的；(二)逆向行驶的；(三)饮酒后驾驶车辆的；(四)驾车穿插、超越警车护卫的车队的；(五)驾驶与驾驶证准驾车型不相符合的车辆的；(六)驾车下陡坡时熄火、空挡滑行的；(七)行经铁路道口不按规定行车或者停车的；(八)客车载人超过核定人数20%以上的；(九)在高速公路上客车载人超过核定人数的；(十)在高速公路上货车载物超过核定载质量30%以上的；(十一)在高速公路上不按规定超车或者变更车道的；(十二)在高速公路上驾驶转向器、制动器、灯光装置等机件不符合安全要求的车辆的；(十三)在高速公路上载运危险物品未经审批或者未按规定行驶的。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebbb",
            type: "单选题",
            content: "泥泞道路对安全行车的主要影响是什么？",
            right: "B",
            analysis: [
                "行驶阻力变小",
                "车轮极易滑转和侧滑",
                "能见度低，视野模糊",
                "路面附着力增大"
            ],
            explanation: "泥泞路面特别松软和粘稠，车辆行驶阻力大，附着力减小，车轮极易划转和侧滑。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "B"
        },
        {
            _id: "5cbfe42c9923576288f5ebcb",
            type: "单选题",
            content: "雨天行车，遇撑雨伞和穿雨衣的行人在公路上行走时，应怎样做？",
            right: "C",
            analysis: [
                "持续鸣喇叭示意其让道",
                "加速绕行",
                "提前鸣喇叭，并适当降低车速",
                "以正常速度行驶"
            ],
            explanation: "只有C最和谐。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "B"
        },
        {
            _id: "5cbfe42c9923576288f5ebc3",
            type: "单选题",
            content: "这位驾驶人违反法律规定的行为是什么？",
            right: "C",
            analysis: [
                "没按规定握转向盘",
                "座椅角度不对",
                "没系安全带",
                "驾驶姿势不正确"
            ],
            explanation: "这个妹子没系安全带。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "A"
        },
        {
            _id: "5cbfe42c9923576288f5ebca",
            type: "单选题",
            content: "行车中遇儿童时，应怎样做？",
            right: "A",
            analysis: [
                "减速慢行，必要时停车避让",
                "长鸣喇叭催促",
                "迅速从一侧通过",
                "加速绕行"
            ],
            explanation: "请尊老爱幼。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "A"
        },
        {
            _id: "5cbfe42c9923576288f5ebc1",
            type: "单选题",
            content: "路两侧的车行道边缘白色实线是什么含义？",
            right: "B",
            analysis: [
                "车辆可临时跨越",
                "禁止车辆跨越",
                "机动车可临时跨越",
                "非机动车可临时跨越"
            ],
            explanation: "白虚线不可以跨越",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "B"
        },
        {
            _id: "5cbfe42c9923576288f5eb66",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "B",
            analysis: [
                "向左单行路",
                "向右单行路",
                "直行单行路",
                "右转让行"
            ],
            explanation: "表示一切车辆向右单向行驶。此标志设在单行路的路口和入口处的适当位置。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "B"
        },
        {
            _id: "5cbfe42c9923576288f5ebc9",
            type: "单选题",
            content: "驾驶车辆行至道路急转弯处，应怎样做？",
            right: "C",
            analysis: [
                "急剧制动低速通过",
                "靠弯道外侧行驶",
                "充分减速并靠右侧行驶",
                "借对向车道行驶"
            ],
            explanation: "安全第一，过急转弯当然要减低车速，靠右行驶是为了防止急转弯另一边有车过来导致两车相撞。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb64",
            type: "单选题",
            content: "如图所示，驾驶机动车遇到这种情况时，以下做法正确的是什么？ ",
            right: "B",
            analysis: [
                "应减速观察水情，然后加速行驶通过",
                "应停车察明水情，确认安全后，低速通过",
                "应停车察明水情，确认安全后，快速通过",
                "可随意通行"
            ],
            explanation: "机动车在有积水较深的桥下通过行车时，应当停车察明水情，确认安全后，低速通过。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebb5",
            type: "单选题",
            content: "机动车在高速公路上发生故障时错误的做法是什么？",
            right: "B",
            analysis: [
                "按规定设置警告标志",
                "车上人员不能下车",
                "迅速报警",
                "开启危险报警闪光灯"
            ],
            explanation: "车上的人员应该立即撤到安全栏外。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "C"
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 20:26:54",
    _values: [
        "驾照考试",
        "administrator",
        "C语言工程师",
        "2019-04-26 20:26:54",
        ""
    ],
    username: "administrator",
    "my_mark": NumberInt("60")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc3ea992ca0a925d8138e52"),
    title: "汇编测试卷",
    instructions: "这是汇编测试卷",
    occupation: "数据库工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-26 20:16:20",
    "end_time": "2019-05-30 20:16:20",
    "total_mark": NumberInt("30"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5ebc2",
            type: "单选题",
            content: "驾驶机动车通过铁路道口时，最高速度不能超过多少？",
            right: "C",
            analysis: [
                "15公里/小时",
                "20公里/小时",
                "30公里/小时",
                "40公里/小时"
            ],
            explanation: "规定：驾驶机动车通过铁路道口时，最高速度不能超过30公里/小时",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb60",
            type: "单选题",
            content: "提供虚假材料申领驾驶证的申请人会承担下列哪种法律责任？",
            right: "C",
            analysis: [
                "处20元以上200元以下罚款",
                "取消申领驾驶证资格",
                "1年内不得再次申领驾驶证",
                "2年内不能再次申领驾驶证"
            ],
            explanation: "《机动车驾驶证申领和使用规定》（公安部令第123号）第七十八条  隐瞒有关情况或者提供虚假材料申领机动车驾驶证的，申请人在一年内不得再次申领机动车驾驶证。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 20:16:53",
    _values: [
        {
            text: "汇编测试卷",
            org: "汇编测试卷"
        },
        {
            text: "administrator",
            org: "administrator"
        },
        {
            text: "数据库工程师",
            org: "数据库工程师"
        },
        {
            text: "2019-04-26 20:16:53",
            org: "2019-04-26 20:16:53"
        },
        {
            text: ""
        }
    ],
    username: "administrator",
    "my_mark": NumberInt("30")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc3eacd2ca0a925d8138e53"),
    title: "2019-04-27 13:38:17 驾照考试 模拟考试",
    "create_time": "2019-04-27 13:38:17",
    instructions: "驾照考试",
    "create_user": "administrator",
    "start_time": "2019-04-27 13:38:17",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb72",
            type: "单选题",
            content: "图中圈内的锯齿状白色实线是什么标线？",
            right: "C",
            analysis: [
                "导向车道线",
                "方向引导线",
                "可变导向车道线",
                "单向行驶线"
            ],
            explanation: "这道儿左转右转还是直行都是可以的，关键看信号灯或者路面上的指标牌",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb85",
            type: "单选题",
            content: "这个标志是何含义？",
            right: "A",
            analysis: [
                "旅游区距离",
                "旅游区方向",
                "旅游区符号",
                "旅游区类别"
            ],
            explanation: "遇此类标志是指旅游区的距离还有多远（亲不要激动 安全第一 慢行",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: "C"
        }
    ],
    "end_time": "2019-04-27 13:38:21",
    username: "administrator",
    "my_mark": NumberInt("50")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc3eae62ca0a925d8138e55"),
    title: "2019-04-27 13:38:44 驾照考试 模拟考试",
    "create_time": "2019-04-27 13:38:44",
    instructions: "驾照考试",
    "create_user": "administrator",
    "start_time": "2019-04-27 13:38:44",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5ebcb",
            type: "单选题",
            content: "雨天行车，遇撑雨伞和穿雨衣的行人在公路上行走时，应怎样做？",
            right: "C",
            analysis: [
                "持续鸣喇叭示意其让道",
                "加速绕行",
                "提前鸣喇叭，并适当降低车速",
                "以正常速度行驶"
            ],
            explanation: "只有C最和谐。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("100"),
            answer: "D"
        }
    ],
    "end_time": "2019-04-27 13:38:46",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc3ee462ca0a925d8138e57"),
    title: "2019-04-27 13:38:44 驾照考试 模拟考试",
    "create_time": "2019-04-27 13:38:44",
    instructions: "驾照考试",
    "create_user": "administrator",
    "start_time": "2019-04-27 13:38:44",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5ebcb",
            type: "单选题",
            content: "雨天行车，遇撑雨伞和穿雨衣的行人在公路上行走时，应怎样做？",
            right: "C",
            analysis: [
                "持续鸣喇叭示意其让道",
                "加速绕行",
                "提前鸣喇叭，并适当降低车速",
                "以正常速度行驶"
            ],
            explanation: "只有C最和谐。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("100"),
            answer: null
        }
    ],
    "end_time": "2019-04-27 13:38:46",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc3ee982ca0a925d8138e58"),
    title: "2019-04-27 13:54:22 Algorithm/Maths 模拟考试",
    "create_time": "2019-04-27 13:54:22",
    instructions: "Algorithm/Maths",
    "create_user": "administrator",
    "start_time": "2019-04-27 13:54:22",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cb17d9b9e71d249e0ecd06f",
            type: "单选题",
            content: "某超市研究销售纪录数据后发现，买啤酒的人很大概率也会购a买尿布，这种属于数据挖掘的哪类问题？",
            analysis: [
                "关联规则发现 ",
                "聚类",
                "分类",
                "自然语言处理"
            ],
            right: "A",
            explanation: "基本概念，多读书",
            tag: [
                "Maths",
                "Algorithm"
            ],
            "create_time": "2019-04-13 02:11:38",
            score: NumberInt("100"),
            answer: "C"
        }
    ],
    answers: [
        "C"
    ],
    "end_time": "2019-04-27 13:54:32",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc3eea32ca0a925d8138e5a"),
    title: "编程语言基础测试卷",
    instructions: "这是编程语言基础测试卷",
    occupation: "数据库工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-26 20:14:43",
    "end_time": "2019-05-31 20:14:44",
    "total_mark": NumberInt("10"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5ebc0",
            type: "单选题",
            content: "下雨后路面湿滑，车辆行驶中紧急制动时，容易导致什么？",
            right: "A",
            analysis: [
                "发生侧滑、引发交通事故",
                "因视线模糊而撞车",
                "不被其他车辆驾驶人发现",
                "引起发动机熄火"
            ],
            explanation: "给大伙上个关于水的物理课：在粗糙的物体表面有能摸的着的水时，水会减小摩擦；在粗糙的物体表面有极少的（摸不到，有湿润感觉）水时，会增加物体表面的粗糙程度增大摩擦力－－如：数钞票时，在手上沾上些水，数钱数的又快又准等。！！！下雨天不是数钱，别急刹了我个亲！急刹加打方向－－你会成为漂移达人的！！",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "D"
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 20:15:21",
    _values: [
        {
            text: "编程语言基础测试卷",
            org: "编程语言基础测试卷"
        },
        {
            text: "administrator",
            org: "administrator"
        },
        {
            text: "数据库工程师",
            org: "数据库工程师"
        },
        {
            text: "2019-04-26 20:15:21",
            org: "2019-04-26 20:15:21"
        },
        {
            text: ""
        }
    ],
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cc3f36f1c4564250cf66280"),
    title: "编程语言基础测试卷",
    instructions: "这是编程语言基础测试卷",
    occupation: "数据库工程师",
    "is_valid": true,
    "is_public": true,
    "start_time": "2019-04-26 20:14:43",
    "end_time": "2019-05-31 20:14:44",
    "total_mark": NumberInt("10"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5ebc0",
            type: "单选题",
            content: "下雨后路面湿滑，车辆行驶中紧急制动时，容易导致什么？",
            right: "A",
            analysis: [
                "发生侧滑、引发交通事故",
                "因视线模糊而撞车",
                "不被其他车辆驾驶人发现",
                "引起发动机熄火"
            ],
            explanation: "给大伙上个关于水的物理课：在粗糙的物体表面有能摸的着的水时，水会减小摩擦；在粗糙的物体表面有极少的（摸不到，有湿润感觉）水时，会增加物体表面的粗糙程度增大摩擦力－－如：数钞票时，在手上沾上些水，数钱数的又快又准等。！！！下雨天不是数钱，别急刹了我个亲！急刹加打方向－－你会成为漂移达人的！！",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("10"),
            answer: "B"
        }
    ],
    "create_user": "administrator",
    "create_time": "2019-04-26 20:15:21",
    _values: [
        {
            text: "编程语言基础测试卷",
            org: "编程语言基础测试卷"
        },
        {
            text: "administrator",
            org: "administrator"
        },
        {
            text: "数据库工程师",
            org: "数据库工程师"
        },
        {
            text: "2019-04-26 20:15:21",
            org: "2019-04-26 20:15:21"
        },
        {
            text: ""
        }
    ],
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5ccecc968131d5189c36732b"),
    title: "知识图谱学习测试卷",
    instructions: "本试卷开考前绝密，希望各位同学认真作答！",
    "create_user": "administrator",
    occupation: "AI工程师",
    questions: [
        {
            _id: "5cae01c0fdc8fc2dc09d03e1",
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "maths",
                "algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: "100",
            answer: null
        }
    ],
    "start_time": "2019-04-13 02:11:38",
    "create_time": "2019-04-10 02:11:38",
    "end_time": "2019-04-13 02:11:38",
    duration: NumberInt("90"),
    "passing_mark": NumberInt("60"),
    "total_mark": NumberInt("100"),
    token: [
        "admin"
    ],
    "is_valid": true,
    "is_public": true,
    _values: [
        {
            text: "知识图谱学习测试卷",
            org: "知识图谱学习测试卷"
        },
        {
            text: "administrator",
            org: "administrator"
        },
        {
            text: "AI工程师",
            org: "AI工程师"
        },
        {
            text: "2019-04-10 02:11:38",
            org: "2019-04-10 02:11:38"
        },
        {
            text: ""
        }
    ],
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cceccb68131d5189c36732d"),
    title: "知识图谱学习测试卷",
    instructions: "本试卷开考前绝密，希望各位同学认真作答！",
    "create_user": "administrator",
    occupation: "AI工程师",
    questions: [
        {
            _id: "5cae01c0fdc8fc2dc09d03e1",
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "maths",
                "algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: "100",
            answer: null
        }
    ],
    "start_time": "2019-04-13 02:11:38",
    "create_time": "2019-04-10 02:11:38",
    "end_time": "2019-04-13 02:11:38",
    duration: NumberInt("90"),
    "passing_mark": NumberInt("60"),
    "total_mark": NumberInt("100"),
    token: [
        "admin"
    ],
    "is_valid": true,
    "is_public": true,
    _values: [
        {
            text: "知识图谱学习测试卷",
            org: "知识图谱学习测试卷"
        },
        {
            text: "administrator",
            org: "administrator"
        },
        {
            text: "AI工程师",
            org: "AI工程师"
        },
        {
            text: "2019-04-10 02:11:38",
            org: "2019-04-10 02:11:38"
        },
        {
            text: ""
        }
    ],
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cced4178131d5189c36732e"),
    title: "知识图谱学习测试卷",
    instructions: "本试卷开考前绝密，希望各位同学认真作答！",
    "create_user": "administrator",
    occupation: "AI工程师",
    questions: [
        {
            _id: "5cae01c0fdc8fc2dc09d03e1",
            type: "单选题",
            content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
            analysis: [
                "频繁模式挖掘",
                "分类和预测",
                "数据预处理",
                "数据流挖掘"
            ],
            right: "C",
            explanation: "基本概念，多读书",
            tag: [
                "maths",
                "algorithm"
            ],
            "create_time": "2019-04-12 02:11:38",
            score: "100",
            answer: null
        }
    ],
    "start_time": "2019-04-13 02:11:38",
    "create_time": "2019-04-10 02:11:38",
    "end_time": "2019-04-13 02:11:38",
    duration: NumberInt("90"),
    "passing_mark": NumberInt("60"),
    "total_mark": NumberInt("100"),
    token: [
        "admin"
    ],
    "is_valid": true,
    "is_public": true,
    _values: [
        {
            text: "知识图谱学习测试卷",
            org: "知识图谱学习测试卷"
        },
        {
            text: "administrator",
            org: "administrator"
        },
        {
            text: "AI工程师",
            org: "AI工程师"
        },
        {
            text: "2019-04-10 02:11:38",
            org: "2019-04-10 02:11:38"
        },
        {
            text: ""
        }
    ],
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cd00d644df6fb33ac8e44a6"),
    title: "2019-05-06 18:33:03 Maths/Apache/驾照考试 模拟考试",
    "create_time": "2019-05-06 18:33:03",
    instructions: "Maths/Apache/驾照考试",
    "create_user": "administrator",
    "start_time": "2019-05-06 18:33:03",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb69",
            type: "单选题",
            content: "上道路行驶的机动车故意遮挡、污损、不按规定安装机动车号牌的一次记几分？",
            right: "D",
            analysis: [
                "2分",
                "3分",
                "6分",
                "12分"
            ],
            explanation: "上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的一次记12分。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb8b",
            type: "单选题",
            content: "这个路面标记是什么标线？",
            right: "C",
            analysis: [
                "禁驶区",
                "网状线",
                "中心圈",
                "导流线"
            ],
            explanation: "中心圈，设置在交叉路口中心的白色圆形或菱形区域，用以区分车辆大、小转弯，及交叉路口车辆左右转弯的指示，车辆不得压线行驶。机动车向左转弯时，必须紧靠中心圈小转弯。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: "D"
        }
    ],
    "end_time": "2019-05-06 18:33:08",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cd00e354df6fb33ac8e44a9"),
    title: "2019-05-06 18:33:03 Maths/Apache/驾照考试 模拟考试",
    "create_time": "2019-05-06 18:33:03",
    instructions: "Maths/Apache/驾照考试",
    "create_user": "administrator",
    "start_time": "2019-05-06 18:33:03",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb69",
            type: "单选题",
            content: "上道路行驶的机动车故意遮挡、污损、不按规定安装机动车号牌的一次记几分？",
            right: "D",
            analysis: [
                "2分",
                "3分",
                "6分",
                "12分"
            ],
            explanation: "上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的一次记12分。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: null
        },
        {
            _id: "5cbfe42c9923576288f5eb8b",
            type: "单选题",
            content: "这个路面标记是什么标线？",
            right: "C",
            analysis: [
                "禁驶区",
                "网状线",
                "中心圈",
                "导流线"
            ],
            explanation: "中心圈，设置在交叉路口中心的白色圆形或菱形区域，用以区分车辆大、小转弯，及交叉路口车辆左右转弯的指示，车辆不得压线行驶。机动车向左转弯时，必须紧靠中心圈小转弯。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: null
        }
    ],
    "end_time": "2019-05-06 18:33:08",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cd00e6c4df6fb33ac8e44aa"),
    title: "2019-05-06 18:33:03 Maths/Apache/驾照考试 模拟考试",
    "create_time": "2019-05-06 18:33:03",
    instructions: "Maths/Apache/驾照考试",
    "create_user": "administrator",
    "start_time": "2019-05-06 18:33:03",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb69",
            type: "单选题",
            content: "上道路行驶的机动车故意遮挡、污损、不按规定安装机动车号牌的一次记几分？",
            right: "D",
            analysis: [
                "2分",
                "3分",
                "6分",
                "12分"
            ],
            explanation: "上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的一次记12分。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: null
        },
        {
            _id: "5cbfe42c9923576288f5eb8b",
            type: "单选题",
            content: "这个路面标记是什么标线？",
            right: "C",
            analysis: [
                "禁驶区",
                "网状线",
                "中心圈",
                "导流线"
            ],
            explanation: "中心圈，设置在交叉路口中心的白色圆形或菱形区域，用以区分车辆大、小转弯，及交叉路口车辆左右转弯的指示，车辆不得压线行驶。机动车向左转弯时，必须紧靠中心圈小转弯。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: null
        }
    ],
    "end_time": "2019-05-06 18:33:08",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cd00e704df6fb33ac8e44ab"),
    title: "2019-05-06 18:33:03 Maths/Apache/驾照考试 模拟考试",
    "create_time": "2019-05-06 18:33:03",
    instructions: "Maths/Apache/驾照考试",
    "create_user": "administrator",
    "start_time": "2019-05-06 18:33:03",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb69",
            type: "单选题",
            content: "上道路行驶的机动车故意遮挡、污损、不按规定安装机动车号牌的一次记几分？",
            right: "D",
            analysis: [
                "2分",
                "3分",
                "6分",
                "12分"
            ],
            explanation: "上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的一次记12分。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: null
        },
        {
            _id: "5cbfe42c9923576288f5eb8b",
            type: "单选题",
            content: "这个路面标记是什么标线？",
            right: "C",
            analysis: [
                "禁驶区",
                "网状线",
                "中心圈",
                "导流线"
            ],
            explanation: "中心圈，设置在交叉路口中心的白色圆形或菱形区域，用以区分车辆大、小转弯，及交叉路口车辆左右转弯的指示，车辆不得压线行驶。机动车向左转弯时，必须紧靠中心圈小转弯。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: null
        }
    ],
    "end_time": "2019-05-06 18:33:08",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cd00e724df6fb33ac8e44ac"),
    title: "2019-05-06 18:33:03 Maths/Apache/驾照考试 模拟考试",
    "create_time": "2019-05-06 18:33:03",
    instructions: "Maths/Apache/驾照考试",
    "create_user": "administrator",
    "start_time": "2019-05-06 18:33:03",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb69",
            type: "单选题",
            content: "上道路行驶的机动车故意遮挡、污损、不按规定安装机动车号牌的一次记几分？",
            right: "D",
            analysis: [
                "2分",
                "3分",
                "6分",
                "12分"
            ],
            explanation: "上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的一次记12分。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: null
        },
        {
            _id: "5cbfe42c9923576288f5eb8b",
            type: "单选题",
            content: "这个路面标记是什么标线？",
            right: "C",
            analysis: [
                "禁驶区",
                "网状线",
                "中心圈",
                "导流线"
            ],
            explanation: "中心圈，设置在交叉路口中心的白色圆形或菱形区域，用以区分车辆大、小转弯，及交叉路口车辆左右转弯的指示，车辆不得压线行驶。机动车向左转弯时，必须紧靠中心圈小转弯。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("50"),
            answer: null
        }
    ],
    "end_time": "2019-05-06 18:33:08",
    username: "administrator",
    "my_mark": NumberInt("0")
} ]);
db.getCollection("paper_history").insert([ {
    _id: ObjectId("5cd12a8a50e42d2c744975c2"),
    title: "2019-05-07 14:49:37 Algorithm/Spin/驾照考试 模拟考试",
    "create_time": "2019-05-07 14:49:37",
    instructions: "Algorithm/Spin/驾照考试",
    "create_user": "administrator",
    "start_time": "2019-05-07 14:49:37",
    "total_mark": NumberInt("100"),
    questions: [
        {
            _id: "5cbfe42c9923576288f5eb8d",
            type: "单选题",
            content: "机动车仪表板上（如图所示）亮表示什么？",
            right: "D",
            analysis: [
                "充电电流过大",
                "蓄电池损坏",
                "电流表故障",
                "充电电路故障"
            ],
            explanation: "此为充电电路故障，一般没有故障这些都不会亮的，只有出故障了才会亮。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebcb",
            type: "单选题",
            content: "雨天行车，遇撑雨伞和穿雨衣的行人在公路上行走时，应怎样做？",
            right: "C",
            analysis: [
                "持续鸣喇叭示意其让道",
                "加速绕行",
                "提前鸣喇叭，并适当降低车速",
                "以正常速度行驶"
            ],
            explanation: "只有C最和谐。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5ebd6",
            type: "单选题",
            content: "同车道行驶的车辆遇前车有下列哪种情形时不得超车？",
            right: "C",
            analysis: [
                "正在停车",
                "减速让行",
                "正在掉头",
                "正常行驶"
            ],
            explanation: "同车道行驶的机动车，后车应当与前车保持足以采取紧急制动措施的安全距离。有下列情形之一的，不得超车：  ①《《前车正在左转弯、掉头、超车的》》;  ②与对面来车有会车可能的;  ③前车为执行紧急任务的警车、消防车、救护车、工程救险车的;  ④行经铁路道口、交叉路口、窄桥、弯道、陡坡、隧道、人行横道、市区交通流量大的路段等没有超车条件的。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb5d",
            type: "单选题",
            content: "驾驶人违反交通运输管理法规发生重大事故后，因逃逸致人死亡的，处多少年有期徒刑？",
            right: "D",
            analysis: [
                "2年以下",
                "3年以下",
                "7年以下",
                "7年以上"
            ],
            explanation: "要看清题目致人死亡的是不是因为逃逸造成的，如果是那就是7年以上。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        },
        {
            _id: "5cbfe42c9923576288f5eb6e",
            type: "单选题",
            content: "指示标志的作用是什么？",
            right: "D",
            analysis: [
                "告知方向信息",
                "警告前方危险",
                "限制车辆、行人通行",
                "指示车辆、行人行进"
            ],
            explanation: "指示标志是交通标志中主要标志的一种，用以指示车辆和行人按规定方向、地点行驶。 指示标志的颜色为蓝底、白图案；形状分为圆形、长方形和正方形。",
            tag: [
                "驾照考试"
            ],
            "create_time": "2019-04-24 02:11:38",
            score: NumberInt("20"),
            answer: "C"
        }
    ],
    "end_time": "2019-05-07 14:49:46",
    username: "administrator",
    "my_mark": NumberInt("40")
} ]);

// ----------------------------
// Collection structure for question
// ----------------------------
db.getCollection("question").drop();
db.createCollection("question");
db.getCollection("question").createIndex({
    tag: NumberInt("1")
}, {
    name: "tag_1"
});

// ----------------------------
// Documents of question
// ----------------------------
db.getCollection("question").insert([ {
    _id: ObjectId("5cae01c0fdc8fc2dc09d03e1"),
    type: "单选题",
    content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
    analysis: [
        "频繁模式挖掘 ",
        "分类和预测",
        "数据预处理",
        "数据流挖掘"
    ],
    right: "C",
    explanation: "基本概念，多读书",
    tag: [
        "Maths",
        "Algorithm"
    ],
    "create_time": "2019-04-12 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cb17d9b9e71d249e0ecd06f"),
    type: "单选题",
    content: "某超市研究销售纪录数据后发现，买啤酒的人很大概率也会购a买尿布，这种属于数据挖掘的哪类问题？",
    analysis: [
        "关联规则发现 ",
        "聚类",
        "分类",
        "自然语言处理"
    ],
    right: "A",
    explanation: "基本概念，多读书",
    tag: [
        "Maths",
        "Algorithm"
    ],
    "create_time": "2019-04-13 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfd5e26abe7e3200477d27"),
    type: "单选题",
    content: "微机硬件系统中最核心的部件是 ____ 。",
    analysis: [
        "内存储器",
        "输入输出设备",
        "CPU",
        "硬盘"
    ],
    right: "C",
    tag: [
        "计算机组成原理"
    ],
    explanation: "",
    "create_time": "2019-04-24 11:20:01"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfd6166abe7e3200477d28"),
    type: "单选题",
    content: "根据计算机使用的电信号来分类，电子计算机分为数字计算机和模拟计算机，其中，数字计算机是以____为处理对象。",
    analysis: [
        "字符数字量",
        "物理量",
        "数字量",
        "数字、字符和物理量"
    ],
    right: "C",
    tag: [
        "计算机组成原理"
    ],
    "create_time": "2019-04-24 11:20:53"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb5d"),
    type: "单选题",
    content: "驾驶人违反交通运输管理法规发生重大事故后，因逃逸致人死亡的，处多少年有期徒刑？",
    right: "D",
    analysis: [
        "2年以下",
        "3年以下",
        "7年以下",
        "7年以上"
    ],
    explanation: "要看清题目致人死亡的是不是因为逃逸造成的，如果是那就是7年以上。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb5e"),
    type: "单选题",
    content: "机动车仪表板上（如图所示）亮表示什么？",
    right: "A",
    analysis: [
        "防抱死制动系统故障",
        "驻车制动器处于解除状态",
        "行车制动系统故障",
        "安全气囊处于故障状态"
    ],
    explanation: "ABS就是防抱死制动系统",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb5f"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "D",
    analysis: [
        "高速公路救援电话号码",
        "高速公路服务电话号码",
        "高速公路报警电话号码",
        "高速公路交通广播频率"
    ],
    explanation: "高速公路交通广播频率：用以指示收听高速公路或城市快速路交通信息广播的频率，可在适当地点设置，根据需要可重复设置。查看高速公路标志大全：http://www.jszks.com/onepage/16721.html",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb60"),
    type: "单选题",
    content: "提供虚假材料申领驾驶证的申请人会承担下列哪种法律责任？",
    right: "C",
    analysis: [
        "处20元以上200元以下罚款",
        "取消申领驾驶证资格",
        "1年内不得再次申领驾驶证",
        "2年内不能再次申领驾驶证"
    ],
    explanation: "《机动车驾驶证申领和使用规定》（公安部令第123号）第七十八条  隐瞒有关情况或者提供虚假材料申领机动车驾驶证的，申请人在一年内不得再次申领机动车驾驶证。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb61"),
    type: "单选题",
    content: "驾驶机动车需要在路边停车时怎样选择停车地点？",
    right: "B",
    analysis: [
        "靠左侧路边逆向停放",
        "在停车泊位内停放",
        "在路边随意停放",
        "在人行道上停放"
    ],
    explanation: "只有停车泊位是可以停放的。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb62"),
    type: "单选题",
    content: "机动车在紧急制动时ABS系统会起到什么作用？",
    right: "D",
    analysis: [
        "切断动力输出",
        "自动控制方向",
        "减轻制动惯性",
        "防止车轮抱死"
    ],
    explanation: "ABS通过控制作用于车轮制动分泵上的制动管路压力，使汽车在紧急刹车时车轮不会抱死，故选D。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb63"),
    type: "单选题",
    content: "交通肇事致一人以上重伤，负事故全部或者主要责任，并具有下列哪种行为的，构成交通肇事罪?",
    right: "C",
    analysis: [
        "未带驾驶证",
        "未报警",
        "无驾驶资格驾驶机动车辆的",
        "未抢救受伤人员"
    ],
    explanation: "可能构成交通壁事罪。例如，交通壁事致一人受伤(属于一般事故)，负事故全部或者主要责任，并具有酒后、无证驾驶、严重超载等情形之一的，以交通肇事罪处罚。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb64"),
    type: "单选题",
    content: "如图所示，驾驶机动车遇到这种情况时，以下做法正确的是什么？ ",
    right: "B",
    analysis: [
        "应减速观察水情，然后加速行驶通过",
        "应停车察明水情，确认安全后，低速通过",
        "应停车察明水情，确认安全后，快速通过",
        "可随意通行"
    ],
    explanation: "机动车在有积水较深的桥下通过行车时，应当停车察明水情，确认安全后，低速通过。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb65"),
    type: "单选题",
    content: "在山区道路遇对向来车时，应怎样会车？",
    right: "D",
    analysis: [
        "紧靠道路中心",
        "不减速",
        "加速",
        "减速或停车让行"
    ],
    explanation: "是双方选择怎么交会，两个车可以等到安全路段再减速交会",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb66"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "向左单行路",
        "向右单行路",
        "直行单行路",
        "右转让行"
    ],
    explanation: "表示一切车辆向右单向行驶。此标志设在单行路的路口和入口处的适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb67"),
    type: "单选题",
    content: "这一组交通警察手势是什么信号？",
    right: "D",
    analysis: [
        "减速慢行信号",
        "靠边停车信号",
        "停止信号",
        "右转弯信号"
    ],
    explanation: "手势题详解：http://www.jszks.com/onepage/16203.html",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb68"),
    type: "单选题",
    content: "有下列哪种违法行为的机动车驾驶人将被一次记6分？",
    right: "A",
    analysis: [
        "驾驶机动车违反道路交通信号灯",
        "未取得校车驾驶资格驾驶校车",
        "驾驶与准驾车型不符的机动车",
        "饮酒后驾驶机动车"
    ],
    explanation: "闯灯的一次6分。B,C,D都是一次记12分。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb69"),
    type: "单选题",
    content: "上道路行驶的机动车故意遮挡、污损、不按规定安装机动车号牌的一次记几分？",
    right: "D",
    analysis: [
        "2分",
        "3分",
        "6分",
        "12分"
    ],
    explanation: "上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的一次记12分。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb6a"),
    type: "单选题",
    content: "在山区道路超车时，应怎样超越？",
    right: "B",
    analysis: [
        "抓住任何机会尽量",
        "选择宽阔的缓上坡路段",
        "选择较长的下坡路",
        "选择较缓的下坡路"
    ],
    explanation: "上坡有阻力，不宜滑车，也不宜撞车，所以上坡宽阔地可以超车！",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb6b"),
    type: "单选题",
    content: "准驾车型为小型自动挡汽车的，可以驾驶以下哪种车型？",
    right: "D",
    analysis: [
        "低速载货汽车",
        "小型汽车",
        "二轮摩托车",
        "轻型自动挡载货汽车"
    ],
    explanation: "小型自动挡汽车（C2）准驾车型：小型、微型自动挡载客汽车以及轻型、微型自动挡载货汽车",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb6c"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "C",
    analysis: [
        "旅游区距离",
        "旅游区类别",
        "旅游区方向",
        "旅游区符号"
    ],
    explanation: "快到云居寺了，箭头指的是方向",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb6d"),
    type: "单选题",
    content: "机动车仪表板上（如图所示）这个符号表示什么？",
    right: "B",
    analysis: [
        "行李舱开启",
        "发动机舱开启",
        "燃油箱盖开启",
        "一侧车门开启"
    ],
    explanation: "前盖为发动机舱，后边为行李舱。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb6e"),
    type: "单选题",
    content: "指示标志的作用是什么？",
    right: "D",
    analysis: [
        "告知方向信息",
        "警告前方危险",
        "限制车辆、行人通行",
        "指示车辆、行人行进"
    ],
    explanation: "指示标志是交通标志中主要标志的一种，用以指示车辆和行人按规定方向、地点行驶。 指示标志的颜色为蓝底、白图案；形状分为圆形、长方形和正方形。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb6f"),
    type: "单选题",
    content: "机动车仪表板上（如图所示）这个符号表示什么？",
    right: "C",
    analysis: [
        "远光灯开关",
        "近光灯开关",
        "车灯总开关",
        "后雾灯开关"
    ],
    explanation: "此为车灯总开关。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb70"),
    type: "单选题",
    content: "存在以下哪种行为的申请人在一年内不得再次申领机动车驾驶证？",
    right: "B",
    analysis: [
        "在考试过程中出现身体不适",
        "在考试过程中有舞弊行为",
        "不能按照教学大纲认真练习驾驶技能",
        "未参加理论培训"
    ],
    explanation: "《机动车驾驶证申领和使用规定》第六章，法律责任，第七十八条，隐瞒有关情况或者提供虚假材料申领机动车驾驶证的，申请人在一年内不得再次申领机动车驾驶证。申请人在考试过程中有贿赂、舞弊行为的，取消考试资格，已经通过考试的其他科目成绩无效；申请人在一年内不得再次申领机动车驾驶证。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb71"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "路面不平",
        "路面低洼",
        "路面高突",
        "有驼峰桥"
    ],
    explanation: "路面低洼：用以提醒车辆驾驶人减速慢行。设在路面突然低洼以前适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb72"),
    type: "单选题",
    content: "图中圈内的锯齿状白色实线是什么标线？",
    right: "C",
    analysis: [
        "导向车道线",
        "方向引导线",
        "可变导向车道线",
        "单向行驶线"
    ],
    explanation: "这道儿左转右转还是直行都是可以的，关键看信号灯或者路面上的指标牌",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb73"),
    type: "单选题",
    content: "上道路行驶的机动车未悬挂机动车号牌的一次记几分？",
    right: "B",
    analysis: [
        "6分",
        "12分",
        "2分",
        "3分"
    ],
    explanation: "上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的一次记12分。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb74"),
    type: "单选题",
    content: "山区道路对安全行车的主要影响是什么？",
    right: "B",
    analysis: [
        "交通情况单一",
        "坡长弯急，视距不足",
        "车流密度大",
        "道路标志少"
    ],
    explanation: "最关键的一点是山区道路行驶时不容易掌握周围情况，也就是所谓视距不足。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb75"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "C",
    analysis: [
        "注意双向行驶",
        "靠两侧行驶",
        "注意潮汐车道",
        "可变车道"
    ],
    explanation: "“潮汐车道”是指根据早晚交通流量不同情况，对有条件的道路，试点开辟潮汐车道，通过车道灯的指示方向变化，控制主干道车道行驶方向，来调整车道数。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb76"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "C",
    analysis: [
        "人行横道灯",
        "注意行人",
        "注意信号灯",
        "交叉路口"
    ],
    explanation: "注意信号灯：用以警告车辆驾驶人注意前方路段设有信号灯，应依信号灯指示行车。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb77"),
    type: "单选题",
    content: "夜间车辆通过照明条件良好的路段时，应使用什么灯？",
    right: "C",
    analysis: [
        "危险报警闪光灯",
        "远光灯",
        "近光灯",
        "雾灯"
    ],
    explanation: "直接解释大家可能难以转过弯来，我们先反过来看这题！夜间车辆通过照明条件不良好的路段时应使用--? 答案：远光灯。照明不良好就是看不见远近路段，当然是打开远光灯，看的更远更清楚，相反照明良好时，也就是说远近处，我们都能看的见，当然是打开近光灯最为保险。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb78"),
    type: "单选题",
    content: "驾驶机动车在没有道路中心线的狭窄山路怎样会车？",
    right: "A",
    analysis: [
        "不靠山体的一方先行",
        "靠山体的一方先行",
        "重车让空车先行",
        "速度慢的先行"
    ],
    explanation: "山路狭窄，这种山路一般有在靠山体一侧挖个让车位，说白了就是加宽点用来会车用的，两车交会时靠山的开进去停住，不一定有落石的， 让不靠山体车先行，是不会开到路边去的，总不能不靠山的停下来，靠山的车转弯进去再转弯出来吧，这要加宽多长哦，这样子的话就不叫狭窄山路了。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb79"),
    type: "单选题",
    content: "同车道行驶的车辆前方遇到下列哪种车辆不得超车？",
    right: "C",
    analysis: [
        "大型客货车",
        "出租汽车",
        "执行任务的救护车",
        "公共汽车"
    ],
    explanation: "亲，人命关天，您就别超了。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb7a"),
    type: "单选题",
    content: "如图所示，驾驶机动车行驶至车道减少的路段时，遇前方机动车排队等候或行驶缓慢时，以下做法正确的是什么？",
    right: "B",
    analysis: [
        "右侧车让左侧车先行",
        "每车道一辆依次交替驶入左侧车道",
        "左侧车让右侧车先行",
        "右侧车寻找空隙提前进入左侧车道"
    ],
    explanation: "驾驶机动车行驶至车道减少的路段时，前方机动车排队等候或行驶缓慢时，应当每车道一辆依次交替驶入左侧车道。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb7b"),
    type: "单选题",
    content: "路两侧的车行道边缘白色实线是什么含义？",
    right: "B",
    analysis: [
        "车辆可临时跨越",
        "禁止车辆跨越",
        "机动车可临时跨越",
        "非机动车可临时跨越"
    ],
    explanation: "白虚线不可以跨越",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb7c"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "C",
    analysis: [
        "两侧通行",
        "右侧通行",
        "左侧通行",
        "不准通行"
    ],
    explanation: "用于引导行车方向，提示道路使用者前方线形变化，注意谨慎驾驶。设于中央隔离设施端部、渠化设施的端部、桥头等。答题技巧：∧表示俩侧通行，/这个方向的表示左侧通行，这个方向表示右侧通行。交通指路标志大全：http://www.jszks.com/onepage/16752.html",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb7d"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "A",
    analysis: [
        "车道数变少",
        "合流处",
        "应急车道",
        "向左变道"
    ],
    explanation: "三车道变成二车道故车道数变少，选A。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb7e"),
    type: "单选题",
    content: "年满20周岁，可以初次申请下列哪种准驾车型？",
    right: "A",
    analysis: [
        "大型货车.",
        "大型客车",
        "中型客车",
        "牵引车"
    ],
    explanation: "申请城市公交车、大型货车、无轨电车或者有轨电车准驾车型的，在20周岁以上，50周岁以下；",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb7f"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "D",
    analysis: [
        "减速让行",
        "潮汐车道",
        "分离式道路",
        "双向交通"
    ],
    explanation: "双向交通：用以提醒车辆驾驶人注意会车。设在由双向分离行驶，因某种原因出现临时性或永久性的不分离双向行驶的路段，或由单向行驶进人双向行驶的路段以前适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb80"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "C",
    analysis: [
        "高速公路右侧出口预告",
        "高速公路下一出口预告",
        "高速公路地点、方向预告",
        "高速公路左侧出口预告"
    ],
    explanation: "高速公路地点、方向预告：用于指示高速公路或城市快速路两个行驶方向，设在驶入高速公路或城市快速路的匝道分岔点处。在目的地信息之上，可增加前往高速公路的编号信息。查看高速公路标志大全：http://www.jszks.com/onepage/16721.html",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb81"),
    type: "单选题",
    content: "如图所示，在这起交通事故中，以下说法正确的是什么？ ",
    right: "A",
    analysis: [
        "A车负全部责任",
        "B车负全部责任",
        "各负一半的责任",
        "B车负主要责任"
    ],
    explanation: "这起交通事故主要是因为A车绕开障碍物时未提前观察减速为B车让行造成的，所以A车全责。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb82"),
    type: "单选题",
    content: "路口最前端的双白实线是什么含义？",
    right: "A",
    analysis: [
        "停车让行线",
        "减速让行线",
        "左弯待转线",
        "等候放行线"
    ],
    explanation: "停车让行线是在没有信号灯状态下。停止线是遇有信号灯红灯时表示车辆等候放行信号的位置,不能超越或压此线。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb83"),
    type: "单选题",
    content: "在这条车道行驶的最低车速是多少？",
    right: "D",
    analysis: [
        "100公里/小时",
        "110公里/小时",
        "60公里/小时",
        "90公里/小时"
    ],
    explanation: "高速路同方向有3条车道，最左侧的为110公里到120公里，中间的为90公里到110公里，最右侧的速度范围为60公里到90公里。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb84"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "C",
    analysis: [
        "直行和左转车道",
        "直行和辅路出口车道",
        "直行和右转合用车道",
        "分向行驶车道"
    ],
    explanation: "表示只准一切车辆直行和向右转弯。此标志设在车辆必须直行和向右转弯）的路口以前适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb85"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "A",
    analysis: [
        "旅游区距离",
        "旅游区方向",
        "旅游区符号",
        "旅游区类别"
    ],
    explanation: "遇此类标志是指旅游区的距离还有多远（亲不要激动 安全第一 慢行",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb86"),
    type: "单选题",
    content: "驾驶机动车遇到这种信号灯不断闪烁时怎样行驶？",
    right: "C",
    analysis: [
        "尽快加速通过",
        "靠边停车等待",
        "注意�望安全通过",
        "紧急制动"
    ],
    explanation: "路口黄灯持续闪烁，警示驾驶人要注意�望，确认安全通过。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb87"),
    type: "单选题",
    content: "如图所示，驾驶机动车遇到这种情况，以下做法正确的是什么？",
    right: "C",
    analysis: [
        "长鸣喇叭催促行人快速通过",
        "开启远光灯警示行人有车辆驶近",
        "降低行驶速度，避让行人",
        "适当加速从行人前方绕行"
    ],
    explanation: "驾驶机动车遇到图中这种情况，应当降低行驶速度，避让行人。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb88"),
    type: "单选题",
    content: "如图所示，以下哪种情况可以超车?(图51a.51b. 51c. 51d)",
    right: "A",
    analysis: [
        "51a",
        "51b",
        "51c",
        "51d"
    ],
    explanation: "如图所示，能够超车的必须满足两个条件：一是必须在虚线的一侧，而是对向没有来车。满足这个两个条件的就只有51a了。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb89"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "A",
    analysis: [
        "距无人看守铁路道口150米",
        "距无人看守铁路道口100米",
        "距有人看守铁路道口100米",
        "距有人看守铁路道口150米"
    ],
    explanation: "一道红线是50米，三道150米。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb8a"),
    type: "单选题",
    content: "以下哪种违法行为的机动车驾驶人将被一次记6分？",
    right: "C",
    analysis: [
        "驾驶与准驾车型不符的机动车",
        "车速超过规定时速50%以上",
        "驾驶机动车违反道路交通信号灯",
        "未取得校车驾驶资格驾驶校车"
    ],
    explanation: "机动车驾驶员有下列违章行为之一的，一次记6分:(一)不按规定停车或者车辆发生故障不立即将车移开，造成交通严重堵塞的；(二)逆向行驶的；(三)饮酒后驾驶车辆的；(四)驾车穿插、超越警车护卫的车队的；(五)驾驶与驾驶证准驾车型不相符合的车辆的；(六)驾车下陡坡时熄火、空挡滑行的；(七)行经铁路道口不按规定行车或者停车的；(八)客车载人超过核定人数20%以上的；(九)在高速公路上客车载人超过核定人数的；(十)在高速公路上货车载物超过核定载质量30%以上的；(十一)在高速公路上不按规定超车或者变更车道的；(十二)在高速公路上驾驶转向器、制动器、灯光装置等机件不符合安全要求的车辆的；(十三)在高速公路上载运危险物品未经审批或者未按规定行驶的。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb8b"),
    type: "单选题",
    content: "这个路面标记是什么标线？",
    right: "C",
    analysis: [
        "禁驶区",
        "网状线",
        "中心圈",
        "导流线"
    ],
    explanation: "中心圈，设置在交叉路口中心的白色圆形或菱形区域，用以区分车辆大、小转弯，及交叉路口车辆左右转弯的指示，车辆不得压线行驶。机动车向左转弯时，必须紧靠中心圈小转弯。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb8c"),
    type: "单选题",
    content: "如图所示，铁路道口禁止掉头的原因是什么？",
    right: "D",
    analysis: [
        "有铁路道口标志",
        "有铁路道口信号灯",
        "铁路道口车流量大",
        "容易引发事故"
    ],
    explanation: "铁道路口行车条件比较复杂，掉头容易引发事故。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb8d"),
    type: "单选题",
    content: "机动车仪表板上（如图所示）亮表示什么？",
    right: "D",
    analysis: [
        "充电电流过大",
        "蓄电池损坏",
        "电流表故障",
        "充电电路故障"
    ],
    explanation: "此为充电电路故障，一般没有故障这些都不会亮的，只有出故障了才会亮。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb8e"),
    type: "单选题",
    content: "机动车驾驶人有以下哪种违法行为的，暂扣六个月机动车驾驶证？",
    right: "C",
    analysis: [
        "醉酒后驾驶机动车的",
        "伪造、变造机动车驾驶证的",
        "饮酒后驾驶机动车的",
        "使用伪造、变造机动车驾驶证的"
    ],
    explanation: "饮酒驾驶机动车辆，罚款1000元―2000元、记12分并暂扣驾照6个月；饮酒驾驶营运机动车，罚款5000元，记12分，处以15日以下拘留，并且5年内不得重新获得驾照。醉酒驾驶机动车辆，吊销驾照，5年内不得重新获取驾照，经过判决后处以拘役，并处罚金；醉酒驾驶营运机动车辆，吊销驾照，10年内不得重新获取驾照，终生不得驾驶营运车辆，经过判决后处以拘役，并处罚金。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb8f"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "D",
    analysis: [
        "向右变道",
        "分流处",
        "路面变宽",
        "车道数增加"
    ],
    explanation: "俩个车道变成三个，表示车道数增加。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb90"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "大型客车专用车道",
        "公交线路专用车道",
        "快速公交系统专用车道",
        "多乘员车辆专用车道"
    ],
    explanation: "此为公交线路专用车道，与快速公交系统专用车道的区别是少了“快速公交”四个字。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb91"),
    type: "单选题",
    content: "下长坡时，控制车速除了刹车制动以外还有什么有效的辅助方法？",
    right: "B",
    analysis: [
        "挂入空挡滑行",
        "利用发动机制动",
        "关闭发动机熄火滑行",
        "踏下离合器滑行"
    ],
    explanation: "发动机制动就是挂低档，让车利用低档位的惯性制动，你可以试一下，你在3挡的速度，直接挂1挡，记住不要踩刹车，直接挂档，你看效果如何，车身会震一下，速度下降的很快",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb92"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "A",
    analysis: [
        "停车领卡",
        "停车缴费",
        "ETC通道",
        "停车检查"
    ],
    explanation: "停车领卡：用以提示停车领卡，设在进入高速公路或城市快速路收费站入口一侧的适当位置。查看高速公路标志大全：http://www.jszks.com/onepage/16721.html",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb93"),
    type: "单选题",
    content: "在这种路口怎样进行掉头？",
    right: "A",
    analysis: [
        "从中心线虚线处掉头",
        "从右侧车道掉头",
        "进入路口后掉头",
        "在人行横道上掉头"
    ],
    explanation: "从中心线虚线处是可以掉头的，其他的选项都不对。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb94"),
    type: "单选题",
    content: "夜间驾驶机动车在窄路、窄桥会车怎样使用灯光？",
    right: "B",
    analysis: [
        "关闭所有灯光",
        "开启近光灯",
        "关闭前照灯",
        "开启远光灯"
    ],
    explanation: "记住，只有在没有路灯或者没有照明的情况下才能用远光灯，一般都用近光灯。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb95"),
    type: "单选题",
    content: "驾驶车辆在交叉路口前变更车道时，应怎样驶入要变更的车道？",
    right: "D",
    analysis: [
        "在路口前实线区内根据需要",
        "进入路口实线区内",
        "在路口停止线前",
        "在虚线区按导向箭头指示"
    ],
    explanation: "当然是在未到人行道前按导向标识了，要不都到人行道边上了，怎么改变车道。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb96"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "右侧是下坡路段",
        "靠右侧道路行驶",
        "靠道路右侧停车",
        "只准向右转弯"
    ],
    explanation: "靠右侧道路行驶：表示只准一切车辆靠右侧道路行驶。此标志设在车辆必须靠右侧行驶的路口以前适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb97"),
    type: "单选题",
    content: "红色圆圈内标线含义是什么？",
    right: "B",
    analysis: [
        "临时停靠站",
        "港湾式停靠站",
        "应急停车带",
        "公交车停靠站"
    ],
    explanation: "请记住",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb98"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "D",
    analysis: [
        "十字交叉路口预告",
        "互通立体交叉预告",
        "Y型交叉路口预告",
        "环行交叉路口预告"
    ],
    explanation: "环形交叉口是在几条相交道路的平面交叉口中央设置一个半径较大的中心岛，使所有经过交叉口的直行和左转车辆都绕着中心岛作逆时针方向行驶，在其行驶过程中将车流的冲突点变  为交织点，从而保证交叉口的行车安全，提高交叉口的通行能力。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb99"),
    type: "单选题",
    content: "遇到前方车辆缓慢行驶时怎样行驶？",
    right: "A",
    analysis: [
        "依次排队行驶",
        "占对向车道超越",
        "从右侧借道超越",
        "从两侧随意超越"
    ],
    explanation: "请选最和谐的答案。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb9a"),
    type: "单选题",
    content: "年龄在60周岁以上的机动车驾驶人，应当每年进行一次身体检查的目的是什么？",
    right: "D",
    analysis: [
        "体现对老年人的关心",
        "例行程序仅供参考",
        "检查是否患有老年常见病",
        "检查是否患有妨碍安全驾驶的疾病"
    ],
    explanation: "根据《机动车驾驶证申领使用规定》第四十八条规定年龄在60周岁以上或者持有大型客车、牵引车、城市公交车、中型客车、大型货车、无轨电车、有轨电车准驾车型的机动车驾驶人，应当每年进行一次身体检查，在记分周期结束后十五日内，提交县级或者部队团级以上医疗机构出具的有关身体条件的证明，检查是否患有妨碍安全驾驶的疾病。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb9b"),
    type: "单选题",
    content: "在这段高速公路上行驶的最低车速是多少？",
    right: "C",
    analysis: [
        "100公里/小时",
        "80公里/小时",
        "60公里/小时",
        "50公里/小时"
    ],
    explanation: "图片上那个蓝色的牌子60就是最低车速。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb9c"),
    type: "单选题",
    content: "机动车在高速公路行驶，下列做法正确的是？",
    right: "A",
    analysis: [
        "非紧急情况时不得在应急车道行驶或者停车",
        "可在减速车道或加速车道上超车、停车",
        "可在紧急停车带停车装卸货物",
        "可在路肩停车上下人员"
    ],
    explanation: "只有A最和谐。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb9d"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "C",
    analysis: [
        "省道编号",
        "国道编号",
        "县道编号",
        "乡道编号"
    ],
    explanation: "乡道是白底Y字开头的，县道是白底X开头的，省道是黄底的，国道是红底的。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb9e"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "D",
    analysis: [
        "小型汽车专用车道",
        "机动车专用车道",
        "出租汽车专用车道",
        "多乘员车辆专用车道"
    ],
    explanation: "此标志为多乘员车辆专用车道，比机动车专用车道标志上的小车多了2个小人，所以它是多乘员车辆专用车道。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eb9f"),
    type: "单选题",
    content: "发动机起动后仪表板上（如图所示）亮表示什么？",
    right: "D",
    analysis: [
        "燃油泵出现异常或者故障",
        "发动机点火系统出现故障",
        "发动机供油系统出现异常",
        "油箱内燃油已到最低液面"
    ],
    explanation: "这个是汽油不足了，多像加油站加油的那个机器，记住机油和汽油是不一样的。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba0"),
    type: "单选题",
    content: "驾驶机动车在高速公路发生故障，需要停车排除故障时，以下做法先后顺序正确的是？ ①放置警告标志，转移乘车人员至安全处，迅速报警②开启危险报警闪光灯③将车辆移至不妨碍交通的位置④等待救援",
    right: "D",
    analysis: [
        "④③①②",
        "①②③④",
        "③②①④",
        "②③①④"
    ],
    explanation: "驾驶机动车在高速公路发生故障，需要停车排除故障时，应当进行如下顺序的操作：开启危险报警闪光灯；将车辆移至不妨碍交通的位置；放置警告标志，转移乘车人员至安全处，迅速报警；等待救援。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba1"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "D",
    analysis: [
        "T型路口",
        "分流路口",
        "减速通行",
        "此路不通"
    ],
    explanation: "用以指示前方道路为死胡同，无出口、不能通行。该标志为蓝底白色街区红色图案。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba2"),
    type: "单选题",
    content: "行车中超越右侧停放的车辆时，为预防其突然起步或开启车门，应怎样做？",
    right: "D",
    analysis: [
        "加速通过",
        "长鸣喇叭",
        "保持正常速度行驶",
        "预留出横向安全距离，减速行驶"
    ],
    explanation: "留出安全距离、并减速，万一右侧车辆启动才有足够的空间和时间避让！",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba3"),
    type: "单选题",
    content: "路中黄色分界线的作用是什么？",
    right: "B",
    analysis: [
        "允许在左侧车道行驶",
        "分隔对向行驶的交通流",
        "分隔同向行驶的交通流",
        "禁止跨越对向行车道"
    ],
    explanation: "分隔相向车道的分界线",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba4"),
    type: "单选题",
    content: "路面上的菱形块虚线是何含义？",
    right: "B",
    analysis: [
        "道路施工提示标线",
        "车行道纵向减速标线",
        "车行道横向减速标线",
        "车道变少提示标线"
    ],
    explanation: "车行道纵向减速标线为一组平行于车行道分界线的菱形块虚线。在车行道纵向减速标线的起始位置，设置30 m的渐变段，菱形块虚线由窄变宽－－from 专业控。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba5"),
    type: "单选题",
    content: "下列哪种证件是驾驶机动车上路行驶应当随车携带？",
    right: "B",
    analysis: [
        "机动车保险单",
        "机动车行驶证",
        "出厂合格证明",
        "机动车登记证"
    ],
    explanation: "常识题。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba6"),
    type: "单选题",
    content: "机动车在道路上发生故障，需要停车排除时，驾驶人应该怎么办？",
    right: "B",
    analysis: [
        "将车停在道路中间",
        "将车停到不妨碍交通的地方",
        "开启近光灯或雾灯",
        "就地停车排除故障"
    ],
    explanation: "只有B最合理，首先应该是不妨碍交通的地方，放在路中间，搞不好后边的看不到撞上来。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba7"),
    type: "单选题",
    content: "危险报警闪光灯可用于下列什么场合？",
    right: "C",
    analysis: [
        "遇到道路拥堵时",
        "在道路上跟车行驶时",
        "机动车发生故障停车时",
        "引领后车行驶时"
    ],
    explanation: "危险报警闪光灯是一种提醒其他车辆与行人注意本车发生了特殊情况的信号灯。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba8"),
    type: "单选题",
    content: "遇前方路段车道减少，车辆行驶缓慢，为保证安全有序应该怎样做？",
    right: "A",
    analysis: [
        "依次交替通行",
        "穿插到前方排队车辆中通过",
        "加速从前车左右超越",
        "借对向车道迅速通过"
    ],
    explanation: "第五十三条：机动车在车道减少的路口、路段，遇有前方机动车停车排队等候或者缓慢行驶的，应当每车道一辆依次交替驶入车道减少后的路口、路段。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5eba9"),
    type: "单选题",
    content: "当驾驶车辆行经两侧有行人且有积水的路面时，应怎样做？",
    right: "D",
    analysis: [
        "加速通过",
        "正常行驶",
        "连续鸣喇叭",
        "减速慢行"
    ],
    explanation: "常识题，减速可以防止溅水，按喇叭有提醒的作用，但不能防止溅水。 想想我们没车的时候是不是很讨厌那些在积水路面开快车的？好吧，我们还是不要做让别人讨厌的人了吧！",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebaa"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "漫水桥",
        "渡口",
        "船用码头",
        "过水路面"
    ],
    explanation: "渡口：用以提醒车辆驾驶人谨慎驾驶。设在车辆渡口以前适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebab"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "A",
    analysis: [
        "高速公路紧急停车带",
        "高速公路避让处所",
        "高速公路客车站",
        "高速公路停车区"
    ],
    explanation: "高速公路紧急停车带：用于指示紧急停车的位置，设在紧急停车带的前端。查看高速公路标志大全：http://www.jszks.com/onepage/16721.html",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebac"),
    type: "单选题",
    content: "在这条城市道路上行驶的最高速度不能超过多少？",
    right: "C",
    analysis: [
        "30公里/小时",
        "40公里/小时",
        "50公里/小时",
        "70公里/小时"
    ],
    explanation: "根据《中华人民共和国道路交通安全法实施条例》第四十五条：……在没有限速标志、标线的道路上，机动车不得超过下列最高行驶速度：　　(一)没有道路中心线的道路，城市道路为每小时30公里，公路为每小时40公里；　　(二)同方向只有1条机动车道的道路，城市道路为每小时50公里，公路为每小时70公里。图为同方向只有1条机动车道的城市道路，所以最高每小时50公里。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebad"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "C",
    analysis: [
        "省道编号",
        "县道编号",
        "乡道编号",
        "国道编号"
    ],
    explanation: "乡道是白底Y字开头的，县道是白底X开头的，省道是黄底的，国道是红底的。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebae"),
    type: "单选题",
    content: "前轮胎爆裂已出现转向时，驾驶人不要过度矫正，应在控制住方向的情况下，应怎样做，使车辆缓慢减速？",
    right: "C",
    analysis: [
        "采取紧急制动",
        "使用驻车制动",
        "轻踏制动踏板",
        "迅速踏下制动踏板"
    ],
    explanation: "A是踩脚刹，B是拉手刹，D是也是踩脚刹，都是属于迅速减速，危险。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebaf"),
    type: "单选题",
    content: "这个路面标记是何含义？",
    right: "A",
    analysis: [
        "最低限速为80公里/小时",
        "平均速度为80公里/小时",
        "最高限速为80公里/小时",
        "解除80公里/小时限速"
    ],
    explanation: "白色为最低限速，黄色为最高限速。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb0"),
    type: "单选题",
    content: "大雾天行车,多鸣喇叭是为了什么?",
    right: "A",
    analysis: [
        "引起对方注意，避免发生危险",
        "催促前车提速，避免发生追尾",
        "准备超越前车",
        "催促前车让行"
    ],
    explanation: "都说了是大雾天，肯定能见度很低啦，所以要靠耳朵来听。多响几声喇叭，就是要告诉别人，这里有车，提高注意！",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb1"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "A",
    analysis: [
        "右转车道",
        "掉头车道",
        "左转车道",
        "分向车道"
    ],
    explanation: "表示只准一切车辆向右转弯。此标志设在车辆必须向右转弯的路口以前适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb2"),
    type: "单选题",
    content: "怎样通过这样的路口？",
    right: "D",
    analysis: [
        "不减速通过",
        "加速尽快通过",
        "空挡滑行通过",
        "减速或停车观察"
    ],
    explanation: "右侧为无人看守的铁路标志，既然是无人看守，您就得悠着点，减速或停车观察一下吧。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb3"),
    type: "单选题",
    content: "这位驾驶人违反法律规定的行为是什么？",
    right: "C",
    analysis: [
        "没按规定握转向盘",
        "座椅角度不对",
        "没系安全带",
        "驾驶姿势不正确"
    ],
    explanation: "这个妹子没系安全带。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb4"),
    type: "单选题",
    content: "驾驶人有哪种情形，交通警察可依法扣留机动车驾驶证？",
    right: "D",
    analysis: [
        "超过规定速度10%",
        "疲劳后驾驶机动车",
        "行车中未系安全带",
        "饮酒后驾驶机动车"
    ],
    explanation: "其他的都不足以扣留驾驶证只有D最严重。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb5"),
    type: "单选题",
    content: "机动车在高速公路上发生故障时错误的做法是什么？",
    right: "B",
    analysis: [
        "按规定设置警告标志",
        "车上人员不能下车",
        "迅速报警",
        "开启危险报警闪光灯"
    ],
    explanation: "车上的人员应该立即撤到安全栏外。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb6"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "左侧变窄",
        "窄桥",
        "窄路",
        "右侧变窄"
    ],
    explanation: "窄桥：用以警告车辆驾驶人注意前方桥面宽度变窄，应谨慎驾驶。设在桥面净宽较两端路面宽度变窄，且桥的净宽小于6 m的桥梁以前适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb7"),
    type: "单选题",
    content: "在一般道路倒车时，若发现有过往车辆通过，应怎样做？",
    right: "B",
    analysis: [
        "鸣喇叭示意",
        "主动停车避让",
        "加速倒车",
        "继续倒车"
    ],
    explanation: "和谐第一，请立即变身圣人，就知道答案了。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb8"),
    type: "单选题",
    content: "机动车仪表板上（如图所示）亮表示什么？",
    right: "B",
    analysis: [
        "前后雾灯开启",
        "前后位置灯开启",
        "前照灯开启",
        "危险报警闪光灯开启"
    ],
    explanation: "位置灯就是车辆示宽灯，也就是当你开启双跳灯后，前后左右四个闪的灯 宽灯就是转向信号灯同时闪烁，用于警告作用。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebb9"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "D",
    analysis: [
        "Y型交叉口",
        "主路让行",
        "注意分流",
        "注意合流"
    ],
    explanation: "黄底为警告标志，所以排除A和B，图很明显的为合流标志，所以选D",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebba"),
    type: "单选题",
    content: "行车中遇有前方发生交通事故，需要帮助时，应怎样做？",
    right: "C",
    analysis: [
        "尽量绕道躲避",
        "立即报警，停车观望",
        "协助保护现场，并立即报警",
        "加速通过，不予理睬"
    ],
    explanation: "请伸出您的援手，你不能保证下次需要帮助的人不是你。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebbb"),
    type: "单选题",
    content: "泥泞道路对安全行车的主要影响是什么？",
    right: "B",
    analysis: [
        "行驶阻力变小",
        "车轮极易滑转和侧滑",
        "能见度低，视野模糊",
        "路面附着力增大"
    ],
    explanation: "泥泞路面特别松软和粘稠，车辆行驶阻力大，附着力减小，车轮极易划转和侧滑。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebbc"),
    type: "单选题",
    content: "这属于哪一种标志？",
    right: "A",
    analysis: [
        "旅游区标志",
        "作业区标志",
        "告示标志",
        "高速公路标志"
    ],
    explanation: "旅游区方向：设在通往旅游区各连接道路的交叉口处。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebbd"),
    type: "单选题",
    content: "驾驶证审验内容不包括以下哪一项？",
    right: "D",
    analysis: [
        "道路交通安全违法行为、交通事故处理情况",
        "身体条件情况",
        "道路交通安全违法行为记分及记满12分后参加学习和考试情况",
        "机动车检验情况"
    ],
    explanation: "驾驶证审验内容包括：道路交通安全违法行为、交通事故处理情况；身体条件情况；道路交通安全违法行为记分及记满12分后参加学习和考试情况。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebbe"),
    type: "单选题",
    content: "这样在路边临时停放机动车有什么违法行为？",
    right: "C",
    analysis: [
        "停车占用机动车道",
        "距离路边超过30厘米",
        "在有禁停标线路段停车",
        "在非机动车道停车"
    ],
    explanation: "图中右侧路边是黄色的禁止停车标线，所以此处是不能停车的。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebbf"),
    type: "单选题",
    content: "前方路口这种信号灯亮表示什么意思？",
    right: "D",
    analysis: [
        "准许通行",
        "提醒注意",
        "路口警示",
        "禁止通行"
    ],
    explanation: "红灯停。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc0"),
    type: "单选题",
    content: "下雨后路面湿滑，车辆行驶中紧急制动时，容易导致什么？",
    right: "A",
    analysis: [
        "发生侧滑、引发交通事故",
        "因视线模糊而撞车",
        "不被其他车辆驾驶人发现",
        "引起发动机熄火"
    ],
    explanation: "给大伙上个关于水的物理课：在粗糙的物体表面有能摸的着的水时，水会减小摩擦；在粗糙的物体表面有极少的（摸不到，有湿润感觉）水时，会增加物体表面的粗糙程度增大摩擦力－－如：数钞票时，在手上沾上些水，数钱数的又快又准等。！！！下雨天不是数钱，别急刹了我个亲！急刹加打方向－－你会成为漂移达人的！！",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc1"),
    type: "单选题",
    content: "路两侧的车行道边缘白色实线是什么含义？",
    right: "B",
    analysis: [
        "车辆可临时跨越",
        "禁止车辆跨越",
        "机动车可临时跨越",
        "非机动车可临时跨越"
    ],
    explanation: "白虚线不可以跨越",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc2"),
    type: "单选题",
    content: "驾驶机动车通过铁路道口时，最高速度不能超过多少？",
    right: "C",
    analysis: [
        "15公里/小时",
        "20公里/小时",
        "30公里/小时",
        "40公里/小时"
    ],
    explanation: "规定：驾驶机动车通过铁路道口时，最高速度不能超过30公里/小时",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc3"),
    type: "单选题",
    content: "这位驾驶人违反法律规定的行为是什么？",
    right: "C",
    analysis: [
        "没按规定握转向盘",
        "座椅角度不对",
        "没系安全带",
        "驾驶姿势不正确"
    ],
    explanation: "这个妹子没系安全带。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc4"),
    type: "单选题",
    content: "驾驶人未携带哪种证件驾驶机动车上路，交通警察可依法扣留车辆？",
    right: "A",
    analysis: [
        "机动车行驶证",
        "从业资格证",
        "居民身份证",
        "机动车通行证"
    ],
    explanation: "《道路交通安全违法行为处理程序规定》第十三条 “有下列情形之一的，因无其他机动车驾驶人代替驾驶、违法行为尚未消除、需要调查或者证据保全等原因不能立即放行的，可以扣留车辆：    （一）未悬挂机动车号牌，未放置检验合格标志、保险标志，或者未携带行驶证、机动车驾驶证的；",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc5"),
    type: "单选题",
    content: "这个开关控制机动车哪个部位？",
    right: "B",
    analysis: [
        "风窗玻璃除雾器",
        "风窗玻璃刮水器",
        "危险报警闪光灯",
        "照明、信号装置"
    ],
    explanation: "这个控制风窗玻璃刮水器的，木问题。风窗玻璃除雾器和危险报警闪光灯都是按钮形式的，照明、信号装置在你的左手边。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc6"),
    type: "单选题",
    content: "在这种天气条件下行车如何使用灯光？",
    right: "B",
    analysis: [
        "使用远光灯",
        "使用雾灯",
        "不使用灯光",
        "开启右转向灯"
    ],
    explanation: "能见度这么低一定要开启雾灯。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc7"),
    type: "单选题",
    content: "驾驶人将机动车交由什么样的人驾驶的，交通警察可依法扣留机动车驾驶证？",
    right: "C",
    analysis: [
        "实习期驾驶人",
        "取得驾驶证的人",
        "驾驶证被吊销的人",
        "驾驶证记分达到6分的人"
    ],
    explanation: "驾驶证被吊销的人，驾驶证被在暂扣的人，无证驾驶的人",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc8"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "D",
    analysis: [
        "高速公路左侧出口预告",
        "高速公路目的地预告",
        "高速公路右侧出口预告",
        "高速公路下一出口预告"
    ],
    explanation: "高速公路下一出口预告：预告下一出口可到达地点。当互通式立体交叉间距大于或等于3 km、小于5 km时，应设置下一出口预告标志，预告下一出口的信息和距离。查看高速公路标志大全：http://www.jszks.com/onepage/16721.html",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebc9"),
    type: "单选题",
    content: "驾驶车辆行至道路急转弯处，应怎样做？",
    right: "C",
    analysis: [
        "急剧制动低速通过",
        "靠弯道外侧行驶",
        "充分减速并靠右侧行驶",
        "借对向车道行驶"
    ],
    explanation: "安全第一，过急转弯当然要减低车速，靠右行驶是为了防止急转弯另一边有车过来导致两车相撞。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebca"),
    type: "单选题",
    content: "行车中遇儿童时，应怎样做？",
    right: "A",
    analysis: [
        "减速慢行，必要时停车避让",
        "长鸣喇叭催促",
        "迅速从一侧通过",
        "加速绕行"
    ],
    explanation: "请尊老爱幼。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebcb"),
    type: "单选题",
    content: "雨天行车，遇撑雨伞和穿雨衣的行人在公路上行走时，应怎样做？",
    right: "C",
    analysis: [
        "持续鸣喇叭示意其让道",
        "加速绕行",
        "提前鸣喇叭，并适当降低车速",
        "以正常速度行驶"
    ],
    explanation: "只有C最和谐。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebcc"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "A",
    analysis: [
        "注意野生动物",
        "注意牲畜",
        "动物公园",
        "开放的牧区"
    ],
    explanation: "这个是头鹿啊，是野生动物啊。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebcd"),
    type: "单选题",
    content: "驾驶人违反交通运输管理法规发生重大事故后，因逃逸致人死亡的，处多少年有期徒刑？",
    right: "D",
    analysis: [
        "2年以下",
        "3年以下",
        "7年以下",
        "7年以上"
    ],
    explanation: "要看清题目致人死亡的是不是因为逃逸造成的，如果是那就是7年以上。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebce"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "路面不平",
        "路面高突",
        "路面低洼",
        "驼峰桥"
    ],
    explanation: "路面高突：用以提醒车辆驾驶人减速慢行。设在路面突然高突以前适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebcf"),
    type: "单选题",
    content: "图中圈内的路面标记是什么标线？",
    right: "A",
    analysis: [
        "人行横道线",
        "减速让行线",
        "停车让行线",
        "路口示意线"
    ],
    explanation: "人行横道 小孩子都知道的",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd0"),
    type: "单选题",
    content: "机动车购买后尚未注册登记，需要临时上道路行驶的，可以凭什么临时上道路行驶？",
    right: "B",
    analysis: [
        "合法来源凭证",
        "临时行驶车号牌",
        "借用的机动车号牌",
        "法人单位证明"
    ],
    explanation: "准予机动车临时上道路行驶的纸质机动车号牌，也称临时行驶车号牌。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd1"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "A",
    analysis: [
        "线形诱导标志",
        "合流诱导标志",
        "分流诱导标志",
        "转弯诱导标志"
    ],
    explanation: "线型诱导标线型诱导标志，用于引导车辆驾驶人改变行驶方向，促使安全运行。视需要设于易肇事之弯道路段，小半径匝道曲线或中央隔离设施及渠化设施的端部。线形诱导标的颜色规定为：指示性线形诱导标一般道路为蓝底白图案,高速公路为绿底白图案，用以提供一般性行驶指示;警告性线形诱导标为红底白图案，可使车辆驾驶人提高警觉，并准备防范应变之措施。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd2"),
    type: "单选题",
    content: "在这个位置时怎样使用灯光？",
    right: "B",
    analysis: [
        "开启右转向灯",
        "开启左转向灯",
        "开启危险报警闪光灯",
        "开启前照灯"
    ],
    explanation: "因为你要从直行并入左侧的车道所以要开启左转向灯。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd3"),
    type: "单选题",
    content: "驾驶机动车行经下列哪种路段不得超车？",
    right: "C",
    analysis: [
        "主要街道",
        "高架路",
        "人行横道",
        "环城高速"
    ],
    explanation: "《中华人民共和国道路交通管理条例》第六章 第五十条 机动车超车，必须遵守下列规定：行经交叉路口、人行横道、漫水路、漫水桥等，不准超车。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd4"),
    type: "单选题",
    content: "机动车在高速公路上发生故障或交通事故无法正常行驶时由什么车拖曳或牵引？",
    right: "D",
    analysis: [
        "过路车",
        "大客车",
        "同行车",
        "清障车"
    ],
    explanation: "应该有专门的清障车来拖拽和牵引。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd5"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "海关检查",
        "停车检查",
        "边防检查",
        "禁止通行"
    ],
    explanation: "停车检查：表示机动车必须停车接受检查。此标志设在关卡将近处，以便要求车辆接受检查或缴费等手续。标志中可加注说明检查事项。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd6"),
    type: "单选题",
    content: "同车道行驶的车辆遇前车有下列哪种情形时不得超车？",
    right: "C",
    analysis: [
        "正在停车",
        "减速让行",
        "正在掉头",
        "正常行驶"
    ],
    explanation: "同车道行驶的机动车，后车应当与前车保持足以采取紧急制动措施的安全距离。有下列情形之一的，不得超车：  ①《《前车正在左转弯、掉头、超车的》》;  ②与对面来车有会车可能的;  ③前车为执行紧急任务的警车、消防车、救护车、工程救险车的;  ④行经铁路道口、交叉路口、窄桥、弯道、陡坡、隧道、人行横道、市区交通流量大的路段等没有超车条件的。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd7"),
    type: "单选题",
    content: "行车中超越同向行驶的自行车时，应怎样做？",
    right: "D",
    analysis: [
        "连续鸣喇叭提醒其让路",
        "持续鸣喇叭并加速超越",
        "让自行车先行",
        "注意观察动态，减速慢行，留有足够的安全距离"
    ],
    explanation: "安全第一，不抢一秒。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd8"),
    type: "单选题",
    content: "存在以下哪种行为的申请人在一年内不得再次申领机动车驾驶证？",
    right: "B",
    analysis: [
        "在考试过程中出现身体不适",
        "在考试过程中有舞弊行为",
        "不能按照教学大纲认真练习驾驶技能",
        "未参加理论培训"
    ],
    explanation: "《机动车驾驶证申领和使用规定》第六章，法律责任，第七十八条，隐瞒有关情况或者提供虚假材料申领机动车驾驶证的，申请人在一年内不得再次申领机动车驾驶证。申请人在考试过程中有贿赂、舞弊行为的，取消考试资格，已经通过考试的其他科目成绩无效；申请人在一年内不得再次申领机动车驾驶证。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebd9"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "直行和掉头合用车道",
        "直行和左转合用车道",
        "直行和右转车道",
        "分向行驶车道"
    ],
    explanation: "表示只准一切车辆直行和向左转弯。此标志设在车辆必须直行和向左转弯的路口以前适当位置。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebda"),
    type: "单选题",
    content: "车辆在雨天临时停车时，应开启什么灯？",
    right: "B",
    analysis: [
        "前后雾灯",
        "危险报警闪光灯",
        "前大灯",
        "倒车灯"
    ],
    explanation: "雨天汽车的刹车距离会比晴天的长，为了防止追尾，你要提前告知后车，所以要开启危险警报灯，夜间和雾天的临时停车也是一样滴！",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cbfe42c9923576288f5ebdb"),
    type: "单选题",
    content: "以下哪项行为可构成危险驾驶罪？",
    right: "D",
    analysis: [
        "闯红灯",
        "无证驾驶",
        "疲劳驾驶",
        "醉驾"
    ],
    explanation: "危险驾驶罪是指在道路上醉酒驾驶机动车或者在道路上驾驶机动车追逐竞驶，情节恶劣的行为。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cc02250c5d5520cd071a062"),
    type: "判断题",
    content: "你认为JavaScript是世界上最好的语言吗？",
    right: "A",
    tag: [
        "JavaScript"
    ],
    explanation: "自己领悟",
    "create_time": "2019-04-24 16:46:07"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cc022fec5d5520cd071a063"),
    type: "多选题",
    content: "以下哪些是水果？",
    analysis: [
        "香蕉",
        "苹果",
        "洋葱",
        "西瓜",
        "菠萝"
    ],
    right: "A,B,D,E",
    tag: [
        "常识"
    ],
    explanation: "这是常识",
    "create_time": "2019-04-24 16:49:01",
    _values: [
        "以下哪些是水果？",
        "多选题",
        [
            "IOS"
        ],
        "2019-04-24 16:49:01",
        ""
    ]
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cc02398c5d5520cd071a065"),
    type: "排序题",
    content: "请给以下数字按照由小到大排序",
    analysis: [
        "1",
        "3",
        "4",
        "2",
        "5"
    ],
    right: "A,D,B,C,E",
    tag: [
        "常识"
    ],
    explanation: "常识",
    "create_time": "2019-04-24 16:51:35"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cc033c3c5d5520cd071a066"),
    type: "填空题",
    content: "莫忘少年凌云志，下一句是____________？",
    right: "曽许天下第一流",
    tag: [
        "常识"
    ],
    "create_time": "2019-04-24 18:00:34"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cd12a3350e42d2c744975c0"),
    type: "单选题",
    content: "假装是题目1",
    analysis: [
        "选项1",
        "选项2",
        "选项3",
        "选项4"
    ],
    right: "B",
    explanation: "厉害",
    tag: [
        "IOS",
        "驾照考试"
    ],
    "create_time": "2019-05-07 14:48:18"
} ]);
db.getCollection("question").insert([ {
    _id: ObjectId("5cd12a3350e42d2c744975c1"),
    type: "单选题",
    content: "假装是题目2",
    analysis: [
        "选项1",
        "选项2",
        "选项3",
        "选项4"
    ],
    right: "C",
    explanation: "厉害",
    tag: [
        "IOS",
        "驾照考试"
    ],
    "create_time": "2019-05-07 14:48:18"
} ]);

// ----------------------------
// Collection structure for question_collection
// ----------------------------
db.getCollection("question_collection").drop();
db.createCollection("question_collection");

// ----------------------------
// Documents of question_collection
// ----------------------------
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc2a2ce7dfbc30c94637cc7"),
    type: "判断题",
    content: "你认为JavaScript是世界上最好的语言吗？",
    right: "A",
    tag: [
        "JavaScript"
    ],
    explanation: "自己领悟",
    "create_time": "2019-04-24 16:46:07",
    score: NumberInt("20"),
    answer: "B",
    username: "administrator",
    "question_id": "5cc02250c5d5520cd071a062"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc2e9be3b1bee114c959c2c"),
    type: "排序题",
    content: "请给以下数字按照由小到大排序",
    analysis: [
        "1",
        "3",
        "4",
        "2",
        "5"
    ],
    right: "A,D,B,C,E",
    tag: [
        "常识"
    ],
    explanation: "常识",
    "create_time": "2019-04-24 16:51:35",
    score: NumberInt("20"),
    answer: "A,B,C",
    username: "administrator",
    "question_id": "5cc02398c5d5520cd071a065"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc2e9dc3b1bee114c959c2e"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "B",
    analysis: [
        "海关检查",
        "停车检查",
        "边防检查",
        "禁止通行"
    ],
    explanation: "停车检查：表示机动车必须停车接受检查。此标志设在关卡将近处，以便要求车辆接受检查或缴费等手续。标志中可加注说明检查事项。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("100"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5ebd5"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc2f9303b1bee114c959c3d"),
    type: "单选题",
    content: "微机硬件系统中最核心的部件是 ____ 。",
    analysis: [
        "内存储器",
        "输入输出设备",
        "CPU",
        "硬盘"
    ],
    right: "C",
    tag: [
        "计算机组成原理"
    ],
    explanation: "",
    "create_time": "2019-04-24 11:20:01",
    score: NumberInt("10"),
    answer: "D",
    username: "administrator",
    "question_id": "5cbfd5e26abe7e3200477d27"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc2f9303b1bee114c959c3e"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "C",
    analysis: [
        "旅游区距离",
        "旅游区类别",
        "旅游区方向",
        "旅游区符号"
    ],
    explanation: "快到云居寺了，箭头指的是方向",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("10"),
    answer: "D",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5eb6c"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc2f9303b1bee114c959c40"),
    type: "单选题",
    content: "雨天行车，遇撑雨伞和穿雨衣的行人在公路上行走时，应怎样做？",
    right: "C",
    analysis: [
        "持续鸣喇叭示意其让道",
        "加速绕行",
        "提前鸣喇叭，并适当降低车速",
        "以正常速度行驶"
    ],
    explanation: "只有C最和谐。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("10"),
    answer: "B",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5ebcb"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc2f9303b1bee114c959c41"),
    type: "单选题",
    content: "这位驾驶人违反法律规定的行为是什么？",
    right: "C",
    analysis: [
        "没按规定握转向盘",
        "座椅角度不对",
        "没系安全带",
        "驾驶姿势不正确"
    ],
    explanation: "这个妹子没系安全带。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("10"),
    answer: "A",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5ebc3"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc2f9303b1bee114c959c42"),
    type: "单选题",
    content: "如图所示，驾驶机动车遇到这种情况时，以下做法正确的是什么？ ",
    right: "B",
    analysis: [
        "应减速观察水情，然后加速行驶通过",
        "应停车察明水情，确认安全后，低速通过",
        "应停车察明水情，确认安全后，快速通过",
        "可随意通行"
    ],
    explanation: "机动车在有积水较深的桥下通过行车时，应当停车察明水情，确认安全后，低速通过。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("10"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5eb64"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc2f9303b1bee114c959c43"),
    type: "单选题",
    content: "机动车在高速公路上发生故障时错误的做法是什么？",
    right: "B",
    analysis: [
        "按规定设置警告标志",
        "车上人员不能下车",
        "迅速报警",
        "开启危险报警闪光灯"
    ],
    explanation: "车上的人员应该立即撤到安全栏外。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("10"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5ebb5"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc30bfa0b4e85928c883636"),
    type: "多选题",
    content: "以下哪些是水果？",
    analysis: [
        "香蕉",
        "苹果",
        "洋葱",
        "西瓜",
        "菠萝"
    ],
    right: "A,B,D,E",
    tag: [
        "常识"
    ],
    explanation: "这是常识",
    "create_time": "2019-04-24 16:49:01",
    _values: [
        "以下哪些是水果？",
        "多选题",
        [
            "IOS"
        ],
        "2019-04-24 16:49:01",
        ""
    ],
    score: NumberInt("20"),
    answer: "A,B,D,E",
    username: "administrator",
    "question_id": "5cc022fec5d5520cd071a063"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc3eacd2ca0a925d8138e54"),
    type: "单选题",
    content: "这个标志是何含义？",
    right: "A",
    analysis: [
        "旅游区距离",
        "旅游区方向",
        "旅游区符号",
        "旅游区类别"
    ],
    explanation: "遇此类标志是指旅游区的距离还有多远（亲不要激动 安全第一 慢行",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("50"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5eb85"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc3eae62ca0a925d8138e56"),
    type: "单选题",
    content: "雨天行车，遇撑雨伞和穿雨衣的行人在公路上行走时，应怎样做？",
    right: "C",
    analysis: [
        "持续鸣喇叭示意其让道",
        "加速绕行",
        "提前鸣喇叭，并适当降低车速",
        "以正常速度行驶"
    ],
    explanation: "只有C最和谐。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("100"),
    answer: "D",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5ebcb"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc3ee982ca0a925d8138e59"),
    type: "单选题",
    content: "某超市研究销售纪录数据后发现，买啤酒的人很大概率也会购a买尿布，这种属于数据挖掘的哪类问题？",
    analysis: [
        "关联规则发现 ",
        "聚类",
        "分类",
        "自然语言处理"
    ],
    right: "A",
    explanation: "基本概念，多读书",
    tag: [
        "Maths",
        "Algorithm"
    ],
    "create_time": "2019-04-13 02:11:38",
    score: NumberInt("100"),
    answer: "C",
    username: "administrator",
    "question_id": "5cb17d9b9e71d249e0ecd06f"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc3eeb12ca0a925d8138e5c"),
    type: "单选题",
    content: "下雨后路面湿滑，车辆行驶中紧急制动时，容易导致什么？",
    right: "A",
    analysis: [
        "发生侧滑、引发交通事故",
        "因视线模糊而撞车",
        "不被其他车辆驾驶人发现",
        "引起发动机熄火"
    ],
    explanation: "给大伙上个关于水的物理课：在粗糙的物体表面有能摸的着的水时，水会减小摩擦；在粗糙的物体表面有极少的（摸不到，有湿润感觉）水时，会增加物体表面的粗糙程度增大摩擦力－－如：数钞票时，在手上沾上些水，数钱数的又快又准等。！！！下雨天不是数钱，别急刹了我个亲！急刹加打方向－－你会成为漂移达人的！！",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("10"),
    answer: "D",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5ebc0"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cc50865df4bb71cc44309ce"),
    type: "单选题",
    content: "准驾车型为小型自动挡汽车的，可以驾驶以下哪种车型？",
    right: "D",
    analysis: [
        "低速载货汽车",
        "小型汽车",
        "二轮摩托车",
        "轻型自动挡载货汽车"
    ],
    explanation: "小型自动挡汽车（C2）准驾车型：小型、微型自动挡载客汽车以及轻型、微型自动挡载货汽车",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("10"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5eb6b"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5ccecc968131d5189c36732c"),
    type: "单选题",
    content: "将原始数据进行集成、变换、维度规约、数值规约是在以下哪个步骤的任务？",
    analysis: [
        "频繁模式挖掘",
        "分类和预测",
        "数据预处理",
        "数据流挖掘"
    ],
    right: "C",
    explanation: "基本概念，多读书",
    tag: [
        "maths",
        "algorithm"
    ],
    "create_time": "2019-04-12 02:11:38",
    score: "100",
    answer: null,
    username: "administrator",
    "question_id": "5cae01c0fdc8fc2dc09d03e1"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cd00d644df6fb33ac8e44a7"),
    type: "单选题",
    content: "上道路行驶的机动车故意遮挡、污损、不按规定安装机动车号牌的一次记几分？",
    right: "D",
    analysis: [
        "2分",
        "3分",
        "6分",
        "12分"
    ],
    explanation: "上道路行驶的机动车未悬挂机动车号牌的，或者故意遮挡、污损、不按规定安装机动车号牌的一次记12分。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("50"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5eb69"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cd00d644df6fb33ac8e44a8"),
    type: "单选题",
    content: "这个路面标记是什么标线？",
    right: "C",
    analysis: [
        "禁驶区",
        "网状线",
        "中心圈",
        "导流线"
    ],
    explanation: "中心圈，设置在交叉路口中心的白色圆形或菱形区域，用以区分车辆大、小转弯，及交叉路口车辆左右转弯的指示，车辆不得压线行驶。机动车向左转弯时，必须紧靠中心圈小转弯。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("50"),
    answer: "D",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5eb8b"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cd12a8a50e42d2c744975c3"),
    type: "单选题",
    content: "机动车仪表板上（如图所示）亮表示什么？",
    right: "D",
    analysis: [
        "充电电流过大",
        "蓄电池损坏",
        "电流表故障",
        "充电电路故障"
    ],
    explanation: "此为充电电路故障，一般没有故障这些都不会亮的，只有出故障了才会亮。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("20"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5eb8d"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cd12a8a50e42d2c744975c4"),
    type: "单选题",
    content: "驾驶人违反交通运输管理法规发生重大事故后，因逃逸致人死亡的，处多少年有期徒刑？",
    right: "D",
    analysis: [
        "2年以下",
        "3年以下",
        "7年以下",
        "7年以上"
    ],
    explanation: "要看清题目致人死亡的是不是因为逃逸造成的，如果是那就是7年以上。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("20"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5eb5d"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cd12a8a50e42d2c744975c5"),
    type: "单选题",
    content: "指示标志的作用是什么？",
    right: "D",
    analysis: [
        "告知方向信息",
        "警告前方危险",
        "限制车辆、行人通行",
        "指示车辆、行人行进"
    ],
    explanation: "指示标志是交通标志中主要标志的一种，用以指示车辆和行人按规定方向、地点行驶。 指示标志的颜色为蓝底、白图案；形状分为圆形、长方形和正方形。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("20"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5eb6e"
} ]);
db.getCollection("question_collection").insert([ {
    _id: ObjectId("5cd12ab550e42d2c744975c6"),
    type: "单选题",
    content: "同车道行驶的车辆遇前车有下列哪种情形时不得超车？",
    right: "C",
    analysis: [
        "正在停车",
        "减速让行",
        "正在掉头",
        "正常行驶"
    ],
    explanation: "同车道行驶的机动车，后车应当与前车保持足以采取紧急制动措施的安全距离。有下列情形之一的，不得超车：  ①《《前车正在左转弯、掉头、超车的》》;  ②与对面来车有会车可能的;  ③前车为执行紧急任务的警车、消防车、救护车、工程救险车的;  ④行经铁路道口、交叉路口、窄桥、弯道、陡坡、隧道、人行横道、市区交通流量大的路段等没有超车条件的。",
    tag: [
        "驾照考试"
    ],
    "create_time": "2019-04-24 02:11:38",
    score: NumberInt("20"),
    answer: "C",
    username: "administrator",
    "question_id": "5cbfe42c9923576288f5ebd6"
} ]);

// ----------------------------
// Collection structure for sessions
// ----------------------------
db.getCollection("sessions").drop();
db.createCollection("sessions");
db.getCollection("sessions").createIndex({
    expires: NumberInt("1")
}, {
    name: "expires_1"
});

// ----------------------------
// Documents of sessions
// ----------------------------
db.getCollection("sessions").insert([ {
    _id: "7LuqLw0Z5mFCqdp3N9DOLqyGKbzWx_rD",
    expires: ISODate("2019-11-08T08:24:42.217Z"),
    lastModified: ISODate("2019-11-08T07:54:42.218Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:24:42.217Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "d47cz6EUdT0CbrqhUD9bArQ269yg4PYk",
    expires: ISODate("2019-11-08T08:24:42.293Z"),
    lastModified: ISODate("2019-11-08T07:54:42.293Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:24:42.293Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "bu9AXT8xvK1nALv_wb8UqBM4qAUkOZof",
    expires: ISODate("2019-11-08T08:25:06.796Z"),
    lastModified: ISODate("2019-11-08T07:55:06.796Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:25:06.796Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "25STdX61sUysx9Nro8GgdJxb9MFUHY_0",
    expires: ISODate("2019-11-08T08:25:06.82Z"),
    lastModified: ISODate("2019-11-08T07:55:06.82Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:25:06.820Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "_SwjLzZQ7D6Eb4Pt7uaWJURqLo5lh0LA",
    expires: ISODate("2019-11-08T08:25:39.465Z"),
    lastModified: ISODate("2019-11-08T07:55:39.466Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:25:39.465Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "5YfX49Zn_hm96nbiufx5Ri2c1dPCr71U",
    expires: ISODate("2019-11-08T08:25:53.96Z"),
    lastModified: ISODate("2019-11-08T07:55:53.96Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:25:53.960Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "vo9hsC1c08yJnhbYdNb5g4dgO2y6NLzB",
    expires: ISODate("2019-11-08T08:25:53.975Z"),
    lastModified: ISODate("2019-11-08T07:55:53.975Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:25:53.975Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "XrPiCm32Sfg6TjMX7FItyYu2D5nH6Gkl",
    expires: ISODate("2019-11-08T08:25:57.136Z"),
    lastModified: ISODate("2019-11-08T07:55:57.136Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:25:57.136Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "sWsKhweZ8sXJk7OWKojkh-TEXGp1zV7p",
    expires: ISODate("2019-11-08T08:26:02.453Z"),
    lastModified: ISODate("2019-11-08T07:56:02.453Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:26:02.453Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "oBKXAwVLuUOTDwqjZi3Z5V9PWYItFyt_",
    expires: ISODate("2019-11-08T08:26:02.478Z"),
    lastModified: ISODate("2019-11-08T07:56:02.478Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:26:02.478Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "nrHTeo09gbgLgQKwHw0nnZrxEcoG9EbQ",
    expires: ISODate("2019-11-08T08:26:06.171Z"),
    lastModified: ISODate("2019-11-08T07:56:06.171Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:26:06.171Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"},\"userinfo\":{\"_id\":\"5cadf131fdc8fc2dc09d03df\",\"username\":\"administrator\",\"password\":\"65a0ec385ca6a0c1e20d1f8270c28303\",\"nickname\":\"一杯凉白开\",\"occupation\":\"数据库工程师\",\"email\":\"cwh736@qq.com\",\"mobile\":\"13913352736\",\"avatar\":\"http://localhost:3000/upload/image/yzPZkLgwhGzuv7rGesEwxCob.jpg\",\"power\":\"1\",\"token\":\"服了你这个Token，浪费两小时搞这个破玩意\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "4TyXgdUgQOJ2KzC7YIEvBefvJUoKyQWt",
    expires: ISODate("2019-11-08T08:26:06.301Z"),
    lastModified: ISODate("2019-11-08T07:56:06.301Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:26:06.301Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "CThIl3x_ndBDZKAf5F8PRVJ-Ts43oaXJ",
    expires: ISODate("2019-11-08T08:27:06.873Z"),
    lastModified: ISODate("2019-11-08T07:57:06.873Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:27:06.873Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "VY7Ycx-j85JB19IXclMi_m-tZn7syVdi",
    expires: ISODate("2019-11-08T08:27:15.093Z"),
    lastModified: ISODate("2019-11-08T07:57:15.093Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:27:15.093Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "d-vsMObNrf6z8Q4qrCFiCtFn0jEScGSP",
    expires: ISODate("2019-11-08T08:27:16.297Z"),
    lastModified: ISODate("2019-11-08T07:57:16.297Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:27:16.297Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "OJaG8Qmv6Ae-HM9v1TXRrt9CGS_V0xfM",
    expires: ISODate("2019-11-08T08:27:17.369Z"),
    lastModified: ISODate("2019-11-08T07:57:17.369Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:27:17.369Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "jAyy7_O4WgeLu-PasIWY3-wOD12Qlp-7",
    expires: ISODate("2019-11-08T08:27:18.325Z"),
    lastModified: ISODate("2019-11-08T07:57:18.325Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:27:18.325Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "i1FM7TL5tgDR_3Ahc7CtwR-6t0YTXG-v",
    expires: ISODate("2019-11-08T08:27:18.869Z"),
    lastModified: ISODate("2019-11-08T07:57:18.869Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:27:18.869Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "Ea0d8MTGLA2o7aLuR3bxAgYfrcXX0_EP",
    expires: ISODate("2019-11-08T08:27:19.404Z"),
    lastModified: ISODate("2019-11-08T07:57:19.404Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:27:19.404Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "TN6WvaA0dxqTeHnNsynvdo2CTPqJFBPg",
    expires: ISODate("2019-11-08T08:27:20.254Z"),
    lastModified: ISODate("2019-11-08T07:57:20.254Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:27:20.254Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);
db.getCollection("sessions").insert([ {
    _id: "UP3oyuJqr98pDvbQyUOxsuNFtaPRb7Qx",
    expires: ISODate("2019-11-08T08:27:20.784Z"),
    lastModified: ISODate("2019-11-08T07:57:20.784Z"),
    session: "{\"cookie\":{\"originalMaxAge\":1800000,\"expires\":\"2019-11-08T08:27:20.784Z\",\"secure\":false,\"httpOnly\":true,\"path\":\"/\"}}"
} ]);

// ----------------------------
// Collection structure for tag
// ----------------------------
db.getCollection("tag").drop();
db.createCollection("tag");

// ----------------------------
// Documents of tag
// ----------------------------
db.getCollection("tag").insert([ {
    _id: ObjectId("5cadff21fdc8fc2dc09d03e0"),
    tag: "Maths",
    _values: [
        "maths",
        ""
    ]
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cae04dffdc8fc2dc09d03e2"),
    tag: "Algorithm",
    _values: [
        "algorithm",
        ""
    ]
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cb1748fc4c1682a84f608e6"),
    tag: "C++",
    _values: [
        "c++",
        ""
    ]
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cb174a1c4c1682a84f608e7"),
    tag: "Java",
    _values: [
        "java",
        ""
    ]
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbaca4a464091478ce49e99"),
    tag: "PHP",
    _values: [
        "php",
        ""
    ]
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbacac7464091478ce49e9a"),
    tag: "C",
    _values: [
        "c",
        ""
    ]
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbacb5c464091478ce49e9b"),
    tag: "JavaScript"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbacb9d464091478ce49e9c"),
    tag: "TypeScript"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbacbda464091478ce49e9d"),
    tag: "C#"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbaccec464091478ce49e9e"),
    tag: "Angular"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbacd07464091478ce49e9f"),
    tag: "React"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbb0bbe77279f49dc573692"),
    tag: "Nodejs"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbc19dc2f486701e8e6d7ac"),
    tag: "MySQL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbc19ec2f486701e8e6d7ad"),
    tag: "MSSQL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbc19f52f486701e8e6d7ae"),
    tag: "Oracle"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbc1a9b2f486701e8e6d7b1"),
    tag: "Android"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cbc1aa32f486701e8e6d7b2"),
    tag: "IOS"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c3c57dfbc30c94637cca"),
    tag: "ASP"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c3cb7dfbc30c94637ccb"),
    tag: "JSP"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c3d27dfbc30c94637ccc"),
    tag: ".NET"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4047dfbc30c94637ccd"),
    tag: "python"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4107dfbc30c94637cce"),
    tag: "SQL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c41f7dfbc30c94637ccf"),
    tag: "MATLAB"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4257dfbc30c94637cd0"),
    tag: "R"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4337dfbc30c94637cd1"),
    tag: "Perl"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c43e7dfbc30c94637cd2"),
    tag: "Swift"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4487dfbc30c94637cd3"),
    tag: "Go"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4517dfbc30c94637cd4"),
    tag: "Ruby"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c45f7dfbc30c94637cd5"),
    tag: "Visual Basic"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4787dfbc30c94637cd6"),
    tag: "Objective-C",
    _values: [
        "Objextive-C",
        ""
    ]
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4a07dfbc30c94637cd7"),
    tag: "Apache"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4a77dfbc30c94637cd8"),
    tag: "Tomcat"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c4c07dfbc30c94637cd9"),
    tag: "Nginx"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c9cb7dfbc30c94637cde"),
    tag: "Software Engineering"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2c9fb7dfbc30c94637cdf"),
    tag: "APL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca007dfbc30c94637ce0"),
    tag: "AutoIt"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca067dfbc30c94637ce1"),
    tag: "BASIC"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca0c7dfbc30c94637ce2"),
    tag: "Eiffel"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca127dfbc30c94637ce3"),
    tag: "Forth"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca177dfbc30c94637ce4"),
    tag: "Frink"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca1e7dfbc30c94637ce5"),
    tag: "Game Maker"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca2a7dfbc30c94637ce6"),
    tag: "ICI"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca527dfbc30c94637ce7"),
    tag: "J"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca5a7dfbc30c94637ce8"),
    tag: "Lisp"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca5f7dfbc30c94637ce9"),
    tag: "Lua"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca657dfbc30c94637cea"),
    tag: "MUMPS"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca6a7dfbc30c94637ceb"),
    tag: "Pascal"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca717dfbc30c94637cec"),
    tag: "PCASTL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca757dfbc30c94637ced"),
    tag: "PostScript"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca7d7dfbc30c94637cee"),
    tag: "REXX"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca827dfbc30c94637cef"),
    tag: "S-Lang"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca897dfbc30c94637cf0"),
    tag: "Spin"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca8e7dfbc30c94637cf1"),
    tag: "Charity"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca927dfbc30c94637cf2"),
    tag: "Clean"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca977dfbc30c94637cf3"),
    tag: "Curry"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca9a7dfbc30c94637cf4"),
    tag: "Erlang"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2ca9f7dfbc30c94637cf5"),
    tag: "F#"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2caa57dfbc30c94637cf6"),
    tag: "Haskell"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2caa87dfbc30c94637cf7"),
    tag: "Joy"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2caac7dfbc30c94637cf8"),
    tag: "Kite"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cab17dfbc30c94637cf9"),
    tag: "ML"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cab67dfbc30c94637cfa"),
    tag: "Nemerle"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2caba7dfbc30c94637cfb"),
    tag: "OPAL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cac07dfbc30c94637cfc"),
    tag: "OPS5"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cac47dfbc30c94637cfd"),
    tag: "Q"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cac87dfbc30c94637cfe"),
    tag: "Ada"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cacc7dfbc30c94637cff"),
    tag: "ALGOL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cad17dfbc30c94637d00"),
    tag: "CLEO"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cad57dfbc30c94637d01"),
    tag: "COBOL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cad97dfbc30c94637d02"),
    tag: "Cobra"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cadd7dfbc30c94637d03"),
    tag: "D"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cae27dfbc30c94637d04"),
    tag: "DASL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cae67dfbc30c94637d05"),
    tag: "DIBOL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2caea7dfbc30c94637d06"),
    tag: "Fortran"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2caee7dfbc30c94637d07"),
    tag: "JOVIAL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2caf37dfbc30c94637d08"),
    tag: "SMALL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2caf87dfbc30c94637d09"),
    tag: "Smalltalk"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cafd7dfbc30c94637d0a"),
    tag: "Turing"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb017dfbc30c94637d0b"),
    tag: "Visual FoxPro"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb087dfbc30c94637d0c"),
    tag: "XL"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb0c7dfbc30c94637d0d"),
    tag: "Bliss"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb107dfbc30c94637d0e"),
    tag: "ChucK"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb147dfbc30c94637d0f"),
    tag: "CLIST"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb177dfbc30c94637d10"),
    tag: "HyperTalk"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb1e7dfbc30c94637d11"),
    tag: "Oberon"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb237dfbc30c94637d12"),
    tag: "Occam"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb277dfbc30c94637d13"),
    tag: "PL/C"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb2c7dfbc30c94637d14"),
    tag: "PL/I"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb347dfbc30c94637d15"),
    tag: "Rapira"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb397dfbc30c94637d16"),
    tag: "RPG"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb3e7dfbc30c94637d17"),
    tag: "Awk"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb427dfbc30c94637d18"),
    tag: "AppleScript"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb467dfbc30c94637d19"),
    tag: "ColdFusion"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb497dfbc30c94637d1a"),
    tag: "BeanShell"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb807dfbc30c94637d1b"),
    tag: "计算机组成原理"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb867dfbc30c94637d1c"),
    tag: "驾照考试"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2cb8a7dfbc30c94637d1d"),
    tag: "常识"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2d5b97dfbc30c94637d1e"),
    tag: "Operating System"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2d5cb7dfbc30c94637d1f"),
    tag: "Data Sturcture"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2d5ec7dfbc30c94637d20"),
    tag: "Computer Network"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2d6717dfbc30c94637d21"),
    tag: "Windows"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cc2d6767dfbc30c94637d22"),
    tag: "Google"
} ]);
db.getCollection("tag").insert([ {
    _id: ObjectId("5cd129d750e42d2c744975be"),
    tag: "hhh "
} ]);

// ----------------------------
// Collection structure for user
// ----------------------------
db.getCollection("user").drop();
db.createCollection("user");

// ----------------------------
// Documents of user
// ----------------------------
db.getCollection("user").insert([ {
    _id: ObjectId("5cadf131fdc8fc2dc09d03df"),
    username: "administrator",
    password: "65a0ec385ca6a0c1e20d1f8270c28303",
    nickname: "一杯凉白开",
    occupation: "数据库工程师",
    email: "cwh736@qq.com",
    mobile: "13913352736",
    avatar: "http://localhost:3000/upload/image/yzPZkLgwhGzuv7rGesEwxCob.jpg",
    power: "1",
    token: "服了你这个Token，浪费两小时搞这个破玩意"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("5cb177379ee2b449bc178af2"),
    username: "wahaha",
    password: "65a0ec385ca6a0c1e20d1f8270c28303",
    nickname: "娃哈哈",
    occupation: "AI工程师",
    email: "664024331@qq.com",
    mobile: "13913352736",
    avatar: "./assets/tmp/img/avatar.jpg",
    power: "2"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("5cb851d6a8531245ac05e62c"),
    username: "google",
    password: "65a0ec385ca6a0c1e20d1f8270c28303",
    nickname: "可口可乐",
    occupation: "安卓工程师",
    avatar: "./assets/tmp/img/avatar.jpg",
    email: "a664024331@gmail.com",
    mobile: "13913352736",
    power: "3",
    _values: [
        "google",
        "可口可乐",
        "AI工程师",
        "a664024331@gmail.com",
        "普通用户",
        ""
    ]
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("5cbd865845d029264ca1a5e0"),
    username: "Echo is sb",
    email: "123456789@qq.com",
    nickname: "xiaochen",
    password: "25f9e794323b453885f5181f1b624d0b",
    power: NumberInt("3"),
    avatar: "http://localhost:3000/upload/image/kklrXvagpobEQMPkyE188JW0.jpg",
    occupation: "AI工程师",
    token: "服了你这个Token，浪费两小时搞这个破玩意"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("5cc2f1c33b1bee114c959c33"),
    username: "xiaxiaoji",
    nickname: "夏小鸡",
    occupation: "IOS工程师",
    email: "864034501@qq.com",
    power: "2",
    password: "65a0ec385ca6a0c1e20d1f8270c28303",
    _values: [
        {
            text: "xiaxiaoji",
            org: "xiaxiaoji"
        },
        {
            text: "夏小鸡",
            org: "夏小鸡"
        },
        {
            text: "IOS工程师",
            org: "IOS工程师"
        },
        {
            text: "864034501@qq.com",
            org: "864034501@qq.com"
        },
        {
            text: "普通用户",
            org: "普通用户"
        },
        {
            text: ""
        }
    ]
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("5cc2f26f3b1bee114c959c34"),
    username: "yizhilaopanda",
    nickname: "一只老panda",
    occupation: "C语言工程师",
    email: "429365725@qq.com",
    power: "3",
    password: "65a0ec385ca6a0c1e20d1f8270c28303"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("5cc2f28c3b1bee114c959c35"),
    username: "wojiaoshani",
    nickname: "我叫啥尼",
    occupation: "数据库工程师",
    email: "1208063539@qq.com",
    power: "3",
    password: "65a0ec385ca6a0c1e20d1f8270c28303"
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("5cc2f5453b1bee114c959c36"),
    username: "tuolaji",
    nickname: "秋名山二手拖拉机",
    occupation: "移动开发工程师",
    email: "tuolaji@qq.com",
    power: "3",
    password: "65a0ec385ca6a0c1e20d1f8270c28303"
} ]);
