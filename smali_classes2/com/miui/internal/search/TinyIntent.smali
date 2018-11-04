.class public Lcom/miui/internal/search/TinyIntent;
.super Ljava/lang/Object;
.source "TinyIntent.java"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mComponent:Landroid/content/ComponentName;

.field private mData:Landroid/net/Uri;

.field private mExtras:Landroid/os/Bundle;

.field private mPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    .line 61
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    .line 62
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    .line 63
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/internal/search/TinyIntent;->setAction(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;

    .line 27
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 9
    .param p1, "json"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const-string/jumbo v7, "intent_action"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 33
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v7, "intent_package"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 34
    .local v6, "pkg":Ljava/lang/String;
    const-string/jumbo v7, "intent_class"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 35
    .local v1, "clazz":Ljava/lang/String;
    const-string/jumbo v7, "intent_extra"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 36
    .local v3, "extra":Lorg/json/JSONArray;
    const-string/jumbo v7, "intent_data"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 37
    .local v2, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 38
    invoke-virtual {p0, v0}, Lcom/miui/internal/search/TinyIntent;->setAction(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;

    .line 40
    :cond_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 41
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 42
    new-instance v7, Landroid/content/ComponentName;

    invoke-direct {v7, v6, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Lcom/miui/internal/search/TinyIntent;->setComponent(Landroid/content/ComponentName;)Lcom/miui/internal/search/TinyIntent;

    .line 47
    :cond_1
    :goto_0
    if-eqz v3, :cond_3

    .line 48
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v4, v7, :cond_3

    .line 49
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 50
    .local v5, "o":Lorg/json/JSONObject;
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "value"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v7, v8}, Lcom/miui/internal/search/TinyIntent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/miui/internal/search/TinyIntent;

    .line 48
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 44
    .end local v4    # "i":I
    .end local v5    # "o":Lorg/json/JSONObject;
    :cond_2
    invoke-virtual {p0, v6}, Lcom/miui/internal/search/TinyIntent;->setPackage(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;

    goto :goto_0

    .line 53
    :cond_3
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 54
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/miui/internal/search/TinyIntent;->setData(Landroid/net/Uri;)V

    .line 31
    :cond_4
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method public getComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getData()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/CharSequence;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 130
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 131
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 130
    :cond_0
    return-object v0
.end method

.method public getPackage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;I)Lcom/miui/internal/search/TinyIntent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 164
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    .line 167
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 168
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Landroid/os/Bundle;)Lcom/miui/internal/search/TinyIntent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Landroid/os/Bundle;

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 181
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 184
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/miui/internal/search/TinyIntent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/CharSequence;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 160
    return-object p0
.end method

.method public putExtra(Ljava/lang/String;Z)Lcom/miui/internal/search/TinyIntent;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 172
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 173
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    .line 175
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 176
    return-object p0
.end method

.method public putExtras(Landroid/os/Bundle;)Lcom/miui/internal/search/TinyIntent;
    .locals 1
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 188
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 192
    return-object p0
.end method

.method public setAction(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;
    .locals 0
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    .line 137
    return-object p0
.end method

.method public setClassName(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .prologue
    .line 151
    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    .line 152
    return-object p0
.end method

.method public setComponent(Landroid/content/ComponentName;)Lcom/miui/internal/search/TinyIntent;
    .locals 0
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    .line 147
    return-object p0
.end method

.method public setData(Landroid/net/Uri;)V
    .locals 0
    .param p1, "data"    # Landroid/net/Uri;

    .prologue
    .line 200
    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    .line 199
    return-void
.end method

.method public setPackage(Ljava/lang/String;)Lcom/miui/internal/search/TinyIntent;
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 141
    iput-object p1, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    .line 142
    return-object p0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 92
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 93
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    .line 96
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 100
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 103
    :cond_2
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 106
    :cond_3
    return-object v0

    .line 97
    :cond_4
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 98
    iget-object v1, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 68
    .local v3, "o":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 69
    const-string/jumbo v4, "intent_action"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 71
    :cond_0
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_4

    .line 72
    const-string/jumbo v4, "intent_package"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v4, "intent_class"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    :cond_1
    :goto_0
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 84
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    if-eqz v4, :cond_3

    .line 85
    const-string/jumbo v4, "intent_data"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mData:Landroid/net/Uri;

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    :cond_3
    return-object v3

    .line 74
    :cond_4
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    if-eqz v4, :cond_1

    .line 75
    const-string/jumbo v4, "intent_package"

    iget-object v5, p0, Lcom/miui/internal/search/TinyIntent;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 78
    :cond_5
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 79
    .local v0, "a":Lorg/json/JSONArray;
    iget-object v4, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v4}, Landroid/os/BaseBundle;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "key$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 80
    .local v1, "key":Ljava/lang/String;
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "value"

    iget-object v6, p0, Lcom/miui/internal/search/TinyIntent;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v6, v1}, Landroid/os/BaseBundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_2

    .line 82
    .end local v1    # "key":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "intent_extra"

    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
.end method
