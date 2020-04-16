#!/usr/bin/env xonsh

chapters = [
    ["平假名","平假名 2","平假名 3","平假名 4","问候","固定用法", "介绍", "人", "兴趣爱好"],
    ["饮食", "时间", "时间2", "家居", "介绍 2", "家庭","学校","餐馆"],
    ["家庭 2", "活动", "日程", "位置", "家居 2", "爱好", "交通", "酒店"],
    ["服饰", "爱好 2", "天气","兴趣爱好 2", "天气 2","方向", "饮食 2","餐馆 2", "向导", "购物","日期","人 2"],
    ["日期 2", "活动 2", "自然", "教室", "感受", "事物", "方向 2", "购物 2", "爱好 3", "教室 2", "教室 3"],
    ["健康", "假期", "事物 2", "日期 3", "人 3", "亚文化", "动物", "奥运会"]
]


for idx,chap in enumerate(chapters):
    idx = idx + 1
    print('\\chapter{多邻国 ' + str(idx) +'}')
    for idx2, sec in enumerate(chap):
        idx2 = idx2 + 1
        name='chapter' + str(idx) + '_lesson' +str(idx2)
        print('\\include{'+name + '}')
        touch @(name).tex
        echo > @(name).tex
        echo @('\section{' + sec + "}") >> @(name).tex
        echo "" >> @(name).tex
        echo '\\subsection{听力句子}' >> @(name).tex
        echo '\\kewen{' >> @(name).tex
        echo '  \\item[] hello here' >> @(name).tex
        echo '}' >> @(name).tex

        echo '\\subsection{日中互译}' >> @(name).tex
        echo '\\jc{おとといはぜんぜん\\ruby{歌い}{うた|い}ませんでした。}{前天完全没有唱歌。}' >> @(name).tex
        echo '\\subsection{生詞表}' >> @(name).tex
        echo '\\word{走り[はしり]}{[动]跑步}' >> @(name).tex
