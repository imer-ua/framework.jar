.class public Landroid/content/res/MiuiResources$ThemeFileInfoOption;
.super Ljava/lang/Object;
.source "MiuiResources.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/MiuiResources;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThemeFileInfoOption"
.end annotation


# instance fields
.field public inCookie:I

.field public inDensity:I

.field public inRequestStream:Z

.field public inResourcePath:Ljava/lang/String;

.field public outDensity:I

.field public outFilterPath:Ljava/lang/String;

.field public outInputStream:Ljava/io/InputStream;

.field public outSize:J


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0
    .param p1, "cookie"    # I
    .param p2, "resourcePath"    # Ljava/lang/String;
    .param p3, "requestStream"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput p1, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 28
    iput-object p2, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 29
    iput-boolean p3, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/util/TypedValue;Z)V
    .locals 1
    .param p1, "value"    # Landroid/util/TypedValue;
    .param p2, "requestStream"    # Z

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget v0, p1, Landroid/util/TypedValue;->assetCookie:I

    iput v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inCookie:I

    .line 37
    iget v0, p1, Landroid/util/TypedValue;->density:I

    iput v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inDensity:I

    .line 38
    iget-object v0, p1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inResourcePath:Ljava/lang/String;

    .line 39
    iput-boolean p2, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "requestStream"    # Z

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-boolean p1, p0, Landroid/content/res/MiuiResources$ThemeFileInfoOption;->inRequestStream:Z

    .line 22
    return-void
.end method
