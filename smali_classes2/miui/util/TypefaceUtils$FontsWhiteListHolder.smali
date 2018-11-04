.class Lmiui/util/TypefaceUtils$FontsWhiteListHolder;
.super Ljava/lang/Object;
.source "TypefaceUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/util/TypefaceUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FontsWhiteListHolder"
.end annotation


# static fields
.field private static final mFontsWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Ljava/util/HashSet;
    .locals 1

    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 22
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    .line 23
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 24
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 25
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.UCMobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 26
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qzone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sina.weibo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 28
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qvod.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 29
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qihoo360.mobilesafe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 30
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.kugou.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 31
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.taobao.taobao"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 32
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baidu.BaiduMap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.youku.phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 34
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sds.android.ttpod"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 35
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qihoo.appstore"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 36
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.pplive.androidphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 37
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.minihd.qq"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 38
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "tv.pps.mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 39
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.channel"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.shuqi.controller"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 41
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.storm.smart"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 42
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.qbx"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.moji.mjweather"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 44
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.wandoujia.phoenix2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 45
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.renren.mobile.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 46
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.duokan.reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.immomo.momo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 48
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.news"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 49
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.qqmusic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 50
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qiyi.video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baidu.video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 52
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.WBlog"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 53
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "qsbk.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.netease.newsreader.activity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 55
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sohu.newsclient"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 56
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.mtt"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 57
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baidu.tieba"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 58
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.wochacha"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 59
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.qqpimsecure"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 60
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.shop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.mt.mtxx.mtxx"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 62
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qihoo360.mobilesafe.opti.powerctl"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 63
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.dragon.android.pandaspace"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 64
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.etouch.ecalendar"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 65
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.changba"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 66
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 67
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.qqlive"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.chaozh.iReaderFree"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 69
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.snda.wifilocating"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 70
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ijinshan.kbatterydoctor"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.duowan.mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.hiapk.marketpho"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 73
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qihoo360.launcher"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qihoo360.mobilesafe.opti"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.com.fetion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.nd.android.pandahome2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 77
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.youdao.dict"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.eg.android.AlipayGphone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.kuwo.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.wps.moffice"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.alibaba.mobileim"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.letv.android.client"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 83
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baidu.searchbox"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.funshion.video.mobile"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 85
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.gau.go.launcherex"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 86
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.opda.a.phonoalbumshoushou"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 87
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qq.reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 88
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.duomi.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 89
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qihoo.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.meitu.meiyancamera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 91
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.nd.android.pandareader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 92
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.kingsoft"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 93
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.cleanmaster.mguard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 94
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sohu.sohuvideo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 95
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.jingdong.app.mall"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 96
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "bubei.tingshu"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 97
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.alipay.android.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "vStudio.Android.Camera360"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 99
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.androidesk"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 100
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ss.android.article.news"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 101
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "org.funship.findsomething.withRK"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 102
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.mybook66"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 103
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.token"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 104
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tmall.wireless"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 105
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.qqgame.qqlordwvga"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 106
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.budejie.www"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 107
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sankuai.meituan"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 108
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.google.android.apps.maps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 109
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.kascend.video"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 110
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.android.pad"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 111
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.muzhiwan.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.mymoney"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 113
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baidu.browser.apps"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 114
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.geili.koudai"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 115
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baidu.news"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 116
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.androidqqmail"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.myzaker.ZAKER_Phone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 118
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ifeng.news2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 119
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.handsgo.jiakao.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.hexin.plat.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.qqphonebook"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 122
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "my.beautyCamera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 123
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.autonavi.minimap"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.cubic.autohome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 125
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.clov4r.android.nil"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 126
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.yangzhibin.chengrenxiaohua"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 127
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.dianxinos.powermanager"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 128
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ijinshan.duba"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 129
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.wuba"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 130
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "sina.mobile.tianqitong"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 131
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.mandi.lol"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 132
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.duowan.lolbox"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 133
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.chrome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 134
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.chinamworld.main"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 135
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ss.android.essay.joke"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 136
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "air.com.tencent.qqpasture"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 137
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.kingreader.framework"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 138
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.ibuka.manga.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 139
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ting.mp3.qianqian.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 140
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.jiubang.goscreenlock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 141
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.shoujiduoduo.ringtone"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 142
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.lbe.security"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 143
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.snda.youni"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 144
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.jiasoft.swreader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 145
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.anyview"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baidu.appsearch"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 147
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sohu.inputmethod.sogou"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 148
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.mxtech.videoplayer.ad"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 149
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.zdworks.android.zdclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 150
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.antutu.ABenchMark"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 151
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "dopool.player"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 152
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.uc.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 153
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ijinshan.mguard"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 154
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "bdmobile.android.app"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 155
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.alensw.PicFolder"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 156
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.topic"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 157
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.oupeng.mini.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 158
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qihoo360.launcher.screenlock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 159
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.vending"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 160
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.meilishuo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 161
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.qidian.QDReader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 162
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.research.drop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 163
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 164
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sinovatech.unicom.ui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 165
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.dianping.v1"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 166
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.yx"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 167
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.dianxinos.dxhome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 168
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.yiche.price"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 169
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.iBookStar.activity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 170
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.dazhihui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 171
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.wps.moffice_eng"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 172
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.taobao.wwseller"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 173
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.icbc"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 174
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.chinabus.main"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ganji.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 176
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ting.mp3.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 177
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.hy.minifetion"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 178
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.mogujie"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 179
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baozoumanhua.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 180
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.calendar.UI"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.wacai365"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 182
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.cnvcs.junqi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 183
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.cntv"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 184
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xunlei.kankan"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 185
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xikang.android.slimcoach"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 186
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.thunder.ktvdaren"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 187
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.goapk.market"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 188
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.htjyb.reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 189
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sec.android.app.camera"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.blovestorm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 191
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "me.papa"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 192
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.when.android.calendar365"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 193
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.android.wallpaper.livepicker"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 194
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.vancl.activity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 195
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "jp.naver.line.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 196
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.netease.mkey"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 197
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.youba.barcode"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 198
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.hupu.games"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 199
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.kandian.vodapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 200
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.dewmobile.kuaiya"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.anguanjia.safe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 202
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tudou.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 203
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cmb.pb"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 204
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.weico.sinaweibo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 205
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.ireadercity.b2"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 206
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cn.wps.livespace"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 207
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.estrongs.android.pop"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 208
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 209
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.disney.WMW"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 210
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tuan800.tao800"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 211
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.byread.reader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 212
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "me.imid.fuubo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 213
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.lingdong.client.android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.mop.activity"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sina.mfweibo"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 216
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "cld.navi.mainframe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 217
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.mappn.gfan"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.pengyou"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 219
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xunlei.downloadprovider"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 220
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.tencent.android.qqdownloader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 221
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.whatsapp"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 222
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.mx.browser"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 223
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.jr"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 224
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.xiaomi.smarthome"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 225
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.backup.transfer"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 226
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.sohu.inputmethod.sogou.xiaomi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 227
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baidu.input_miv6"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 228
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.baidu.input_mi"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 229
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.wali.live"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 230
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.hybrid"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 231
    sget-object v0, Lmiui/util/TypefaceUtils$FontsWhiteListHolder;->mFontsWhiteList:Ljava/util/HashSet;

    const-string/jumbo v1, "com.miui.hybrid.loader"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 19
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
