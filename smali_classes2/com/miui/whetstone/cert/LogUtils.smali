.class public Lcom/miui/whetstone/cert/LogUtils;
.super Ljava/lang/Object;
.source "LogUtils.java"


# static fields
.field public static final LOG_TYPE_IP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static switchData(I[B)V
    .locals 3
    .param p0, "tag"    # I
    .param p1, "data"    # [B

    .prologue
    .line 10
    if-eqz p1, :cond_0

    .line 11
    packed-switch p0, :pswitch_data_0

    .line 9
    :cond_0
    return-void

    .line 14
    :pswitch_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 15
    aget-byte v1, p1, v0

    .line 16
    .local v1, "temp":B
    add-int/lit8 v2, v0, 0x1

    aget-byte v2, p1, v2

    aput-byte v2, p1, v0

    .line 17
    add-int/lit8 v2, v0, 0x1

    aput-byte v1, p1, v2

    .line 14
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 11
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
