.class public Lmiui/provider/AppCornerProviderConstants;
.super Ljava/lang/Object;
.source "AppCornerProviderConstants.java"


# static fields
.field public static final SHOW_CORNER:Ljava/lang/String; = "show_corner"

.field public static final SHOW_CORNER_INDEX:I = 0x0

.field public static final TABLE:Ljava/lang/String; = "app_corner"

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-string/jumbo v0, "content://keyguard.notification/app_corner"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lmiui/provider/AppCornerProviderConstants;->URI:Landroid/net/Uri;

    .line 10
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
