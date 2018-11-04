.class final Landroid/miui/AppOpsUtils$1;
.super Landroid/os/AsyncTask;
.source "AppOpsUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/miui/AppOpsUtils;->setMode(Landroid/content/Context;ILjava/lang/String;I)V
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
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$mode:I

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(ILjava/lang/String;Landroid/content/Context;)V
    .locals 0
    .param p1, "val$mode"    # I
    .param p2, "val$packageName"    # Ljava/lang/String;
    .param p3, "val$context"    # Landroid/content/Context;

    .prologue
    .line 91
    iput p1, p0, Landroid/miui/AppOpsUtils$1;->val$mode:I

    iput-object p2, p0, Landroid/miui/AppOpsUtils$1;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Landroid/miui/AppOpsUtils$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "params"    # [Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "params":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/miui/AppOpsUtils$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 95
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 96
    .local v2, "extras":Landroid/os/Bundle;
    const/4 v0, 0x1

    .line 97
    .local v0, "action":I
    iget v3, p0, Landroid/miui/AppOpsUtils$1;->val$mode:I

    packed-switch v3, :pswitch_data_0

    .line 113
    :goto_0
    :pswitch_0
    const-wide/32 v4, 0x8000

    .line 114
    .local v4, "permission":J
    const-string/jumbo v3, "extra_permission"

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/BaseBundle;->putLong(Ljava/lang/String;J)V

    .line 115
    const-string/jumbo v3, "extra_action"

    invoke-virtual {v2, v3, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 116
    const-string/jumbo v3, "extra_package"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    .line 117
    iget-object v7, p0, Landroid/miui/AppOpsUtils$1;->val$packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    .line 116
    invoke-virtual {v2, v3, v6}, Landroid/os/BaseBundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 119
    const-string/jumbo v3, "extra_flags"

    invoke-virtual {v2, v3, v8}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 121
    :try_start_0
    iget-object v3, p0, Landroid/miui/AppOpsUtils$1;->val$context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/miui/AppOpsUtils;->-get0()Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v7, v8, v2}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_1
    return-object v9

    .line 99
    .end local v4    # "permission":J
    :pswitch_1
    const/4 v0, 0x3

    .line 100
    goto :goto_0

    .line 102
    :pswitch_2
    const/4 v0, 0x2

    .line 103
    goto :goto_0

    .line 106
    :pswitch_3
    const/4 v0, 0x1

    .line 107
    goto :goto_0

    .line 122
    .restart local v4    # "permission":J
    :catch_0
    move-exception v1

    .line 123
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "AppOpsUtils"

    const-string/jumbo v6, "SET_APPLICATION_PERMISSION : "

    invoke-static {v3, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
