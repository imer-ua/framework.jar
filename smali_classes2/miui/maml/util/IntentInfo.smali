.class public Lmiui/maml/util/IntentInfo;
.super Ljava/lang/Object;
.source "IntentInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/IntentInfo$Extra;,
        Lmiui/maml/util/IntentInfo$Type;
    }
.end annotation


# static fields
.field private static final synthetic -miui-maml-util-IntentInfo$TypeSwitchesValues:[I = null

.field private static final LOG_TAG:Ljava/lang/String; = "TaskVariable"


# instance fields
.field private mClassNameExp:Lmiui/maml/data/Expression;

.field private mExtraList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/util/IntentInfo$Extra;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageNameExp:Lmiui/maml/data/Expression;

.field private mTask:Lmiui/maml/util/Task;

.field private mUri:Ljava/lang/String;

.field private mUriExp:Lmiui/maml/data/Expression;

.field private mVariables:Lmiui/maml/data/Variables;


# direct methods
.method static synthetic -get0(Lmiui/maml/util/IntentInfo;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic -get1(Lmiui/maml/util/IntentInfo;)Lmiui/maml/data/Variables;
    .locals 1

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mVariables:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method private static synthetic -getmiui-maml-util-IntentInfo$TypeSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/util/IntentInfo;->-miui-maml-util-IntentInfo$TypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/util/IntentInfo;->-miui-maml-util-IntentInfo$TypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/util/IntentInfo$Type;->values()[Lmiui/maml/util/IntentInfo$Type;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->BOOLEAN:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->DOUBLE:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->FLOAT:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->INT:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->LONG:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v1, Lmiui/maml/util/IntentInfo$Type;->STRING:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    sput-object v0, Lmiui/maml/util/IntentInfo;->-miui-maml-util-IntentInfo$TypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    goto :goto_4

    :catch_2
    move-exception v1

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V
    .locals 1
    .param p1, "ele"    # Lorg/w3c/dom/Element;
    .param p2, "vars"    # Lmiui/maml/data/Variables;

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    .line 121
    if-nez p1, :cond_0

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-static {p1}, Lmiui/maml/util/Task;->load(Lorg/w3c/dom/Element;)Lmiui/maml/util/Task;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    .line 125
    iput-object p2, p0, Lmiui/maml/util/IntentInfo;->mVariables:Lmiui/maml/data/Variables;

    .line 126
    const-string/jumbo v0, "packageExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mPackageNameExp:Lmiui/maml/data/Expression;

    .line 127
    const-string/jumbo v0, "classExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mClassNameExp:Lmiui/maml/data/Expression;

    .line 128
    const-string/jumbo v0, "uri"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    .line 129
    const-string/jumbo v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/util/IntentInfo;->mUriExp:Lmiui/maml/data/Expression;

    .line 130
    invoke-direct {p0, p1}, Lmiui/maml/util/IntentInfo;->loadExtras(Lorg/w3c/dom/Element;)V

    .line 120
    return-void
.end method

.method private loadExtras(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 112
    const-string/jumbo v0, "Extra"

    new-instance v1, Lmiui/maml/util/IntentInfo$1;

    invoke-direct {v1, p0}, Lmiui/maml/util/IntentInfo$1;-><init>(Lmiui/maml/util/IntentInfo;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 111
    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iget-object v1, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v0, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 138
    iget-object v1, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v0, v0, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public set(Lmiui/maml/util/Task;)V
    .locals 0
    .param p1, "task"    # Lmiui/maml/util/Task;

    .prologue
    .line 134
    iput-object p1, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    .line 133
    return-void
.end method

.method public update(Landroid/content/Intent;)V
    .locals 14
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    .line 146
    iget-object v9, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v9, :cond_8

    iget-object v9, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v0, v9, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    .line 147
    .local v0, "action":Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 148
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 150
    :cond_0
    iget-object v9, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v9, :cond_9

    iget-object v9, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v6, v9, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    .line 151
    .local v6, "type":Ljava/lang/String;
    :goto_1
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 152
    invoke-virtual {p1, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_1
    iget-object v9, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v9, :cond_a

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v1, v8, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    .line 155
    .local v1, "category":Ljava/lang/String;
    :goto_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 156
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    :cond_2
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v8, :cond_b

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v5, v8, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    .line 159
    :goto_3
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mPackageNameExp:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_3

    .line 160
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mPackageNameExp:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v5

    .line 163
    :cond_3
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    if-eqz v8, :cond_c

    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mTask:Lmiui/maml/util/Task;

    iget-object v2, v8, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    .line 164
    :goto_4
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mClassNameExp:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_4

    .line 165
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mClassNameExp:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v2

    .line 168
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 169
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_d

    .line 170
    invoke-virtual {p1, v5, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 176
    :cond_5
    :goto_5
    iget-object v7, p0, Lmiui/maml/util/IntentInfo;->mUri:Ljava/lang/String;

    .line 177
    .local v7, "uri":Ljava/lang/String;
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mUriExp:Lmiui/maml/data/Expression;

    if-eqz v8, :cond_6

    .line 178
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mUriExp:Lmiui/maml/data/Expression;

    invoke-virtual {v8}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v7

    .line 180
    :cond_6
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 181
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 184
    :cond_7
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    if-eqz v8, :cond_10

    .line 185
    iget-object v8, p0, Lmiui/maml/util/IntentInfo;->mExtraList:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "extra$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/util/IntentInfo$Extra;

    .line 186
    .local v3, "extra":Lmiui/maml/util/IntentInfo$Extra;
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->isConditionTrue()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 187
    invoke-static {}, Lmiui/maml/util/IntentInfo;->-getmiui-maml-util-IntentInfo$TypeSwitchesValues()[I

    move-result-object v8

    iget-object v9, v3, Lmiui/maml/util/IntentInfo$Extra;->mType:Lmiui/maml/util/IntentInfo$Type;

    invoke-virtual {v9}, Ljava/lang/Enum;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    goto :goto_6

    .line 204
    :pswitch_0
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v8, v10, v12

    if-lez v8, :cond_e

    const/4 v8, 0x1

    :goto_7
    invoke-virtual {p1, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_6

    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "category":Ljava/lang/String;
    .end local v3    # "extra":Lmiui/maml/util/IntentInfo$Extra;
    .end local v4    # "extra$iterator":Ljava/util/Iterator;
    .end local v6    # "type":Ljava/lang/String;
    .end local v7    # "uri":Ljava/lang/String;
    :cond_8
    move-object v0, v8

    .line 146
    goto/16 :goto_0

    .restart local v0    # "action":Ljava/lang/String;
    :cond_9
    move-object v6, v8

    .line 150
    goto/16 :goto_1

    .restart local v6    # "type":Ljava/lang/String;
    :cond_a
    move-object v1, v8

    .line 154
    goto/16 :goto_2

    .line 158
    .restart local v1    # "category":Ljava/lang/String;
    :cond_b
    const/4 v5, 0x0

    .local v5, "packageName":Ljava/lang/String;
    goto/16 :goto_3

    .line 163
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_c
    const/4 v2, 0x0

    .local v2, "className":Ljava/lang/String;
    goto :goto_4

    .line 172
    .end local v2    # "className":Ljava/lang/String;
    :cond_d
    invoke-virtual {p1, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_5

    .line 189
    .restart local v3    # "extra":Lmiui/maml/util/IntentInfo$Extra;
    .restart local v4    # "extra$iterator":Ljava/util/Iterator;
    .restart local v7    # "uri":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_6

    .line 192
    :pswitch_2
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    double-to-int v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_6

    .line 195
    :pswitch_3
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    double-to-long v10, v10

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_6

    .line 198
    :pswitch_4
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    double-to-float v9, v10

    invoke-virtual {p1, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    goto :goto_6

    .line 201
    :pswitch_5
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getDouble()D

    move-result-wide v10

    invoke-virtual {p1, v8, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;D)Landroid/content/Intent;

    goto/16 :goto_6

    .line 204
    :cond_e
    const/4 v8, 0x0

    goto :goto_7

    .line 210
    :cond_f
    invoke-virtual {v3}, Lmiui/maml/util/IntentInfo$Extra;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 145
    .end local v3    # "extra":Lmiui/maml/util/IntentInfo$Extra;
    .end local v4    # "extra$iterator":Ljava/util/Iterator;
    :cond_10
    return-void

    .line 187
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method
