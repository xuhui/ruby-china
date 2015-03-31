# coding: utf-8

# 默认配置项
# 如需新增设置项，请在这里初始化默认值，然后到后台修改
# 首页
# SiteConfig.index_html
SiteConfig.save_default("index_html",<<-eos
<div class="box" style="text-align:center;">
这里是playground，我们一起玩吧！
</div>
eos
)

# Wiki 首页 HTML
SiteConfig.save_default("wiki_index_html",<<-eos
<div class="box">
  维基小百科。
</div>
eos
)

# Footer HTML
SiteConfig.save_default("footer_html",<<-eos
<p class="copyright">
 &copy; zhouxuhui.com
</p>
eos
)

# 话题后面的HTML代码
SiteConfig.save_default("after_topic_html",<<-eos
<div class="share_links">
 <a href="https://twitter.com/share" class="twitter-share-button" data-count="none"">Tweet</a>
 <script type="text/javascript" src="//platform.twitter.com/widgets.js"></script>
</div>
eos
)

# 话题正文前面的HTML
SiteConfig.save_default("before_topic_html",<<-eos
eos
)

# 话题列表首页边栏HTML
SiteConfig.save_default("topic_index_sidebar_html",<<-eos
<div class="box">
  <h2>公告</h2>
  <div class="content">
    Hello world.
  </div>
</div>

<div class="box">
  <h2>置顶话题</h2>
  <ul class="content">
    <li><a href="/topics/1">Foo bar</a></li>
  </ul>
</div>
eos
)

# 酷站列表首页头的HTML
SiteConfig.save_default("site_index_html",<<-eos
下面列出了基于 Ruby 语言开发的网站。如果你知道还有不在此列表的，请帮忙补充。
eos
)

# 自定有 HTML head 区域的内容
SiteConfig.save_default("custom_head_html",<<-eos
<link rel="dns-prefetch" href="//assets.youhost.com">
eos
)

# 要在论坛首页列表隐藏的节点,以逗号隔开
SiteConfig.save_default("node_ids_hide_in_topics_index","")

# Sidebar 新建话题按钮，下拉显示的节点列表
SiteConfig.save_default("new_topic_dropdown_node_ids","")

# 禁止回复的某些词语
SiteConfig.save_default("ban_words_on_reply","mark\n收藏\n顶\n赞\nup\n")

# 随机显示的 tip 信息
SiteConfig.save_default("tips","提示1\n提示2")

SiteConfig.save_default("newbie_notices",%(<p>为提高社区质量，防止新人一来就发帖提问接触 Ruby 遇到的问题，新用户需要达到下面条件才可发帖：</p>
    <ol style="color:#ad2b2d;">
      <li>注册时间超过一个月；</li>
      <li>回帖数量必须达到 10 帖以上；</li>
    </ol>
    <p>请在新人阶段多浏览，看看其他老用户是如何在社区里面分享与解决问题的。</p>))

SiteConfig.save_default("reject_newbie_reply_in_the_evening", "false")

SiteConfig.save_default("twitter_page_html",%(
<div class="box">
<a class="twitter-timeline" href="https://twitter.com/ruby_china/ruby-developers" data-widget-id="435676008880959489" data-tweet-limit="20" data-chrome="noscrollbar transparent" width="940" height="800">Ruby Developers 的 Twitter Timeline</a>
<script type="text/javasscript">!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+"://platform.twitter.com/widgets.js";fjs.parentNode.insertBefore(js,fjs);}}(document,"script","twitter-wjs");</script>
</div>
))

# ========================= init Section, Node =========================

s1 = Section.create(:name => "粑粑麻麻")
Node.create(:name => "所有关于宝宝的",:summary => "...", :section_id => s1.id)
s2 = Section.create(:name => "酷玩DIY")
Node.create(:name => "硬件",:summary => "...", :section_id => s2.id)
Node.create(:name => "软件",:summary => "...", :section_id => s2.id)
s3 = Section.create(:name => "摄影")
Node.create(:name => "手机拍照",:summary => "...", :section_id => s3.id)
Node.create(:name => "单反/定焦镜头",:summary => "...", :section_id => s3.id)
Node.create(:name => "单反/变焦镜头",:summary => "...", :section_id => s3.id)
s4 = Section.create(:name => "烘焙")
Node.create(:name => "面包",:summary => "...", :section_id => s4.id)
Node.create(:name => "蛋糕",:summary => "...", :section_id => s4.id)
s6 = Section.create(:name => "PLAYGROUND")
Node.create(:name => "公告",:summary => "...", :section_id => s6.id)
Node.create(:name => "反馈",:summary => "...", :section_id => s6.id)

SiteNode.create(:name => "国内商业网站", :sort => 100)
SiteNode.create(:name => "国外著名网站", :sort => 99)
SiteNode.create(:name => "Ruby 社区网站", :sort => 98)
SiteNode.create(:name => "技术博客", :sort => 97)
SiteNode.create(:name => "Ruby 开源项目", :sort => 96)
SiteNode.create(:name => "国内企业", :sort => 95)
SiteNode.create(:name => "其他", :sort => 94)

