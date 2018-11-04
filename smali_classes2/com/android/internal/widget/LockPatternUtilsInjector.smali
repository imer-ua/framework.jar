.class public Lcom/android/internal/widget/LockPatternUtilsInjector;
.super Ljava/lang/Object;
.source "LockPatternUtilsInjector.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isUserAllowed(Landroid/content/Context;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$Secure;->isSecureSpace(Landroid/content/ContentResolver;)Z

    move-result v0

    return v0
.end method
