.class final Landroid/graphics/improve/SRReporter$1;
.super Landroid/os/AsyncTask;
.source "SRReporter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/improve/SRReporter;->report(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$jsonObject:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lorg/json/JSONObject;)V
    .locals 0
    .param p1, "val$jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 32
    iput-object p1, p0, Landroid/graphics/improve/SRReporter$1;->val$jsonObject:Lorg/json/JSONObject;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 34
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/graphics/improve/SRReporter$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 35
    invoke-static {}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->getInstance()Lmiui/mqsas/sdk/MQSEventManagerDelegate;

    move-result-object v0

    .line 36
    const-string/jumbo v1, "superResolution"

    iget-object v2, p0, Landroid/graphics/improve/SRReporter$1;->val$jsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v1, v2, v3}, Lmiui/mqsas/sdk/MQSEventManagerDelegate;->reportEvent(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 37
    const/4 v0, 0x0

    return-object v0
.end method
