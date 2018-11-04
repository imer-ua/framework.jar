.class public Landroid/os/statistics/SingleJniMethod$JniMethodFields;
.super Landroid/os/statistics/MicroscopicEvent$MicroEventFields;
.source "SingleJniMethod.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/statistics/SingleJniMethod;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JniMethodFields"
.end annotation


# instance fields
.field public javaBackTrace:Ljava/lang/Object;

.field public stackTrace:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 187
    invoke-direct {p0}, Landroid/os/statistics/MicroscopicEvent$MicroEventFields;-><init>()V

    return-void
.end method
