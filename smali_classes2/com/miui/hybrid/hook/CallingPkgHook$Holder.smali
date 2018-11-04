.class Lcom/miui/hybrid/hook/CallingPkgHook$Holder;
.super Ljava/lang/Object;
.source "CallingPkgHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/hybrid/hook/CallingPkgHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static INSTANCE:Lcom/miui/hybrid/hook/CallingPkgHook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Lcom/miui/hybrid/hook/CallingPkgHook;

    invoke-direct {v0}, Lcom/miui/hybrid/hook/CallingPkgHook;-><init>()V

    sput-object v0, Lcom/miui/hybrid/hook/CallingPkgHook$Holder;->INSTANCE:Lcom/miui/hybrid/hook/CallingPkgHook;

    .line 16
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
