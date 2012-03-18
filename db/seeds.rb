# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
User.destroy_all

User.create(email: "admin@admin.com", password: "admin")
admin = User.first
admin.geekdoors.concat([Geekdoor.new(name: "Baidu", url: "http://www.baidu.com/s?wd=%s", hotkey: "q"),
                        Geekdoor.new(name: "Google", url: "http://www.google.com.hk/#hl=zh-CN&newwindow=1&safe=strict&site=&q=%s&oq=qwe&aq=f&aqi=g10&aql=&gs_sm=3&gs_upl=879l1047l0l1179l3l2l0l0l0l0l92l92l1l1l0&bav=on.2,or.r_gc.r_pw.,cf.osb&fp=855d35fbdb04d6a5&biw=1277&bih=638", hotkey: "w"),
                        Geekdoor.new(name: "Bing", url: "http://cn.bing.com/search?%s=q&go=&qs=n&form=QBLH&pq=q&sc=8-1&sp=-1&sk=", hotkey: "p"),
                        Geekdoor.new(name: "Ruby China", url: "http://ruby-china.org/search?q=%s", hotkey: "d"),
                        Geekdoor.new(name: "V2EX", url: "http://www.google.com.hk/search?q=site:v2ex.com/t%20%s", hotkey: "f"),
                        Geekdoor.new(name: "Bilibili", url: "http://www.bilibili.tv/search?keyword=%s&orderby=&formsubmit=", hotkey: "1"),
                        Geekdoor.new(name: "Youku", url: "http://www.soku.com/search_video/q_%s", hotkey: "2"),
                        Geekdoor.new(name: "Tudou", url: "http://so.tudou.com/nisearch/%s/", hotkey: "3"),
                        Geekdoor.new(name: "Youtube", url: "http://www.youtube.com/results?search_query=%s&oq=qqqq&aq=f&aqi=&aql=&gs_sm=3&gs_upl=37653l38086l0l38221l4l4l0l0l0l0l0l0ll0l0", hotkey: "4"),
                        Geekdoor.new(name: "Acfun", url: "http://s.acfun.tv/search.aspx?q=%s&order=b597c70a-68d7-46de-bd39-81a2bd035fc3&group=-1", hotkey: "5"),
                        Geekdoor.new(name: "Ngacn", url: "http://db.178.com/wow/cn/search.html?name=%s", hotkey: "z"),
                        Geekdoor.new(name: "Wowmovies", url: "http://www.wowmovies.cn/down_search.asp?title=%s&img2.x=44&img2.y=13", hotkey: "x"),
                        Geekdoor.new(name: "Battlenet.CN", url: "http://www.battlenet.com.cn/wow/zh/search?q=%s", hotkey: "c"),
                        Geekdoor.new(name: "Railscasts", url: "http://railscasts.com/episodes?utf8=%E2%9C%93&search=%s", hotkey: "r"),
                        Geekdoor.new(name: "Stackoverflow", url: "http://stackoverflow.com/search?q=%s", hotkey: "t"),
                        Geekdoor.new(name: "Dribbble", url: "http://dribbble.com/search?q=%s", hotkey: "g"),
                        Geekdoor.new(name: "deviantART", url: "http://browse.deviantart.com/?qh=&section=&q=%s", hotkey: "b"),
                        Geekdoor.new(name: "Taobao", url: "http://s.taobao.com/search?q=%s&keyword=&commend=all&ssid=s5-e&search_type=item&atype=&tracelog=&sourceId=tb.index&initiative_id=tbindexz_20120226", hotkey: "o"),
                        Geekdoor.new(name: "360Buy", url: "http://search.360buy.com/Search?keyword=%s", hotkey: "i"),
                        Geekdoor.new(name: "Amazon.CN", url: "http://www.amazon.cn/s/ref=nb_sb_noss/475-2222454-4134653?__mk_zh_CN=%E4%BA%9A%E9%A9%AC%E9%80%8A%E7%BD%91%E7%AB%99&url=search-alias%3Daps&field-keywords=%s&x=0&y=0", hotkey: "k"),
                        Geekdoor.new(name: "Xiami", url: "http://www.xiami.com/search?key=%s&pos=1", hotkey: "l"),
                        Geekdoor.new(name: "Dangdang", url: "http://searchb.dangdang.com/?key=%s", hotkey: "m"),
                        Geekdoor.new(name: "Github", url: "https://github.com/search?q=%s&type=Everything&repo=&langOverride=&start_value=1", hotkey: "h"),
                        Geekdoor.new(name: "Niconico", url: "http://www.nicovideo.jp/search/%s?track=nicouni_search_keyword", hotkey: "y"),
                        Geekdoor.new(name: "Nicosound", url: "http://nicosound.anyap.info/sound/%s", hotkey: "u")])
admin.save                        

