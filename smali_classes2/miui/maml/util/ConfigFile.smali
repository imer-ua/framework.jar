.class public Lmiui/maml/util/ConfigFile;
.super Ljava/lang/Object;
.source "ConfigFile.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/util/ConfigFile$Gadget;,
        Lmiui/maml/util/ConfigFile$OnLoadElementListener;,
        Lmiui/maml/util/ConfigFile$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ConfigFile"

.field public static final TAG_APP_PICKER:Ljava/lang/String; = "AppPicker"

.field public static final TAG_CHECK_BOX:Ljava/lang/String; = "CheckBox"

.field private static final TAG_GADGET:Ljava/lang/String; = "Gadget"

.field private static final TAG_GADGETS:Ljava/lang/String; = "Gadgets"

.field public static final TAG_GROUP:Ljava/lang/String; = "Group"

.field public static final TAG_IMAGE_PICKER:Ljava/lang/String; = "ImagePicker"

.field public static final TAG_NUMBER_CHOICE:Ljava/lang/String; = "NumberChoice"

.field public static final TAG_NUMBER_INPUT:Ljava/lang/String; = "NumberInput"

.field private static final TAG_ROOT:Ljava/lang/String; = "Config"

.field public static final TAG_STRING_CHOICE:Ljava/lang/String; = "StringChoice"

.field public static final TAG_STRING_INPUT:Ljava/lang/String; = "StringInput"

.field private static final TAG_TASK:Ljava/lang/String; = "Intent"

.field private static final TAG_TASKS:Ljava/lang/String; = "Tasks"

.field private static final TAG_VARIABLE:Ljava/lang/String; = "Variable"

.field private static final TAG_VARIABLES:Ljava/lang/String; = "Variables"


# instance fields
.field private mDirty:Z

.field private mFilePath:Ljava/lang/String;

.field private mGadgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation
.end field

.field private mTasks:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/util/Task;",
            ">;"
        }
    .end annotation
.end field

.field private mVariables:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lmiui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lmiui/maml/util/ConfigFile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    .line 31
    return-void
.end method

.method private createNewFile(Ljava/lang/String;)V
    .locals 2
    .param p1, "filePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 173
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 174
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 177
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 172
    .end local v0    # "f":Ljava/io/File;
    :cond_0
    return-void
.end method

.method private loadGadgets(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 323
    const-string/jumbo v0, "Gadgets"

    const-string/jumbo v1, "Gadget"

    new-instance v2, Lmiui/maml/util/ConfigFile$3;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$3;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 322
    return-void
.end method

.method private loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V
    .locals 6
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .param p2, "listTag"    # Ljava/lang/String;
    .param p3, "itemTag"    # Ljava/lang/String;
    .param p4, "listener"    # Lmiui/maml/util/ConfigFile$OnLoadElementListener;

    .prologue
    .line 340
    invoke-static {p1, p2}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    .line 341
    if-nez p1, :cond_0

    .line 342
    return-void

    .line 343
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 344
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 345
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    .line 346
    .local v3, "node":Lorg/w3c/dom/Node;
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v3

    .line 347
    check-cast v2, Lorg/w3c/dom/Element;

    .line 348
    .local v2, "item":Lorg/w3c/dom/Element;
    invoke-interface {p4, v2}, Lmiui/maml/util/ConfigFile$OnLoadElementListener;->OnLoadElement(Lorg/w3c/dom/Element;)V

    .line 344
    .end local v2    # "item":Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 339
    .end local v3    # "node":Lorg/w3c/dom/Node;
    :cond_2
    return-void
.end method

.method private loadTasks(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 314
    const-string/jumbo v0, "Tasks"

    const-string/jumbo v1, "Intent"

    new-instance v2, Lmiui/maml/util/ConfigFile$2;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$2;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 313
    return-void
.end method

.method private loadVariables(Lorg/w3c/dom/Element;)V
    .locals 3
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 305
    const-string/jumbo v0, "Variables"

    const-string/jumbo v1, "Variable"

    new-instance v2, Lmiui/maml/util/ConfigFile$1;

    invoke-direct {v2, p0}, Lmiui/maml/util/ConfigFile$1;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-direct {p0, p1, v0, v1, v2}, Lmiui/maml/util/ConfigFile;->loadList(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/util/ConfigFile$OnLoadElementListener;)V

    .line 304
    return-void
.end method

.method private put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    .line 403
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 404
    :cond_0
    return-void

    .line 405
    :cond_1
    const-string/jumbo v1, "string"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string/jumbo v1, "number"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 407
    :cond_2
    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    .line 408
    .local v0, "item":Lmiui/maml/util/ConfigFile$Variable;
    if-nez v0, :cond_3

    .line 409
    new-instance v0, Lmiui/maml/util/ConfigFile$Variable;

    .end local v0    # "item":Lmiui/maml/util/ConfigFile$Variable;
    invoke-direct {v0}, Lmiui/maml/util/ConfigFile$Variable;-><init>()V

    .line 410
    .restart local v0    # "item":Lmiui/maml/util/ConfigFile$Variable;
    iput-object p1, v0, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    .line 411
    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 413
    :cond_3
    iput-object p3, v0, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    .line 414
    iput-object p2, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    .line 402
    return-void

    .line 406
    .end local v0    # "item":Lmiui/maml/util/ConfigFile$Variable;
    :cond_4
    return-void
.end method

.method private writeGadgets(Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 260
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 261
    return-void

    .line 263
    :cond_0
    const-string/jumbo v4, "Gadgets"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 265
    new-array v2, v8, [Ljava/lang/String;

    .line 266
    const-string/jumbo v4, "path"

    aput-object v4, v2, v5

    const-string/jumbo v4, "x"

    aput-object v4, v2, v6

    const-string/jumbo v4, "y"

    aput-object v4, v2, v7

    .line 268
    .local v2, "names":[Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Gadget;

    .line 269
    .local v0, "item":Lmiui/maml/util/ConfigFile$Gadget;
    new-array v3, v8, [Ljava/lang/String;

    .line 270
    iget-object v4, v0, Lmiui/maml/util/ConfigFile$Gadget;->path:Ljava/lang/String;

    aput-object v4, v3, v5

    iget v4, v0, Lmiui/maml/util/ConfigFile$Gadget;->x:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget v4, v0, Lmiui/maml/util/ConfigFile$Gadget;->y:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 272
    .local v3, "values":[Ljava/lang/String;
    const-string/jumbo v4, "Gadget"

    invoke-static {p1, v4, v2, v3, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 274
    .end local v0    # "item":Lmiui/maml/util/ConfigFile$Gadget;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "Gadgets"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 259
    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "end"    # Z

    .prologue
    .line 278
    const-string/jumbo v0, "<"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    if-eqz p2, :cond_0

    .line 280
    const-string/jumbo v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    const-string/jumbo v0, ">\n"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 1
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    .line 285
    return-void
.end method

.method private static writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "values"    # [Ljava/lang/String;
    .param p4, "ignoreEmptyValues"    # Z

    .prologue
    .line 290
    const-string/jumbo v1, "<"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 293
    if-eqz p4, :cond_0

    aget-object v1, p3, v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 295
    :cond_0
    const-string/jumbo v1, " "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    const-string/jumbo v1, "=\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    aget-object v1, p3, v0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    const-string/jumbo v1, "\""

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 301
    :cond_1
    const-string/jumbo v1, "/>\n"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    return-void
.end method

.method private writeTasks(Ljava/lang/StringBuilder;)V
    .locals 11
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 241
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 242
    return-void

    .line 244
    :cond_0
    const-string/jumbo v4, "Tasks"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 246
    const/4 v4, 0x7

    new-array v2, v4, [Ljava/lang/String;

    .line 247
    sget-object v4, Lmiui/maml/util/Task;->TAG_ID:Ljava/lang/String;

    aput-object v4, v2, v6

    sget-object v4, Lmiui/maml/util/Task;->TAG_ACTION:Ljava/lang/String;

    aput-object v4, v2, v7

    sget-object v4, Lmiui/maml/util/Task;->TAG_TYPE:Ljava/lang/String;

    aput-object v4, v2, v8

    sget-object v4, Lmiui/maml/util/Task;->TAG_CATEGORY:Ljava/lang/String;

    aput-object v4, v2, v9

    sget-object v4, Lmiui/maml/util/Task;->TAG_PACKAGE:Ljava/lang/String;

    aput-object v4, v2, v10

    sget-object v4, Lmiui/maml/util/Task;->TAG_CLASS:Ljava/lang/String;

    const/4 v5, 0x5

    aput-object v4, v2, v5

    .line 248
    sget-object v4, Lmiui/maml/util/Task;->TAG_NAME:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v4, v2, v5

    .line 250
    .local v2, "names":[Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/Task;

    .line 251
    .local v0, "item":Lmiui/maml/util/Task;
    const/4 v4, 0x7

    new-array v3, v4, [Ljava/lang/String;

    .line 252
    iget-object v4, v0, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v0, Lmiui/maml/util/Task;->action:Ljava/lang/String;

    aput-object v4, v3, v7

    iget-object v4, v0, Lmiui/maml/util/Task;->type:Ljava/lang/String;

    aput-object v4, v3, v8

    iget-object v4, v0, Lmiui/maml/util/Task;->category:Ljava/lang/String;

    aput-object v4, v3, v9

    iget-object v4, v0, Lmiui/maml/util/Task;->packageName:Ljava/lang/String;

    aput-object v4, v3, v10

    iget-object v4, v0, Lmiui/maml/util/Task;->className:Ljava/lang/String;

    const/4 v5, 0x5

    aput-object v4, v3, v5

    iget-object v4, v0, Lmiui/maml/util/Task;->name:Ljava/lang/String;

    const/4 v5, 0x6

    aput-object v4, v3, v5

    .line 254
    .local v3, "values":[Ljava/lang/String;
    const-string/jumbo v4, "Intent"

    invoke-static {p1, v4, v2, v3, v7}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V

    goto :goto_0

    .line 256
    .end local v0    # "item":Lmiui/maml/util/Task;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "Tasks"

    invoke-static {p1, v4, v7}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 240
    return-void
.end method

.method private writeVariables(Ljava/lang/StringBuilder;)V
    .locals 9
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-nez v4, :cond_0

    .line 224
    return-void

    .line 226
    :cond_0
    const-string/jumbo v4, "Variables"

    invoke-static {p1, v4, v5}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 228
    new-array v2, v8, [Ljava/lang/String;

    .line 229
    const-string/jumbo v4, "name"

    aput-object v4, v2, v5

    const-string/jumbo v4, "type"

    aput-object v4, v2, v6

    const-string/jumbo v4, "value"

    aput-object v4, v2, v7

    .line 231
    .local v2, "names":[Ljava/lang/String;
    iget-object v4, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "item$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    .line 232
    .local v0, "item":Lmiui/maml/util/ConfigFile$Variable;
    new-array v3, v8, [Ljava/lang/String;

    .line 233
    iget-object v4, v0, Lmiui/maml/util/ConfigFile$Variable;->name:Ljava/lang/String;

    aput-object v4, v3, v5

    iget-object v4, v0, Lmiui/maml/util/ConfigFile$Variable;->type:Ljava/lang/String;

    aput-object v4, v3, v6

    iget-object v4, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    aput-object v4, v3, v7

    .line 235
    .local v3, "values":[Ljava/lang/String;
    const-string/jumbo v4, "Variable"

    invoke-static {p1, v4, v2, v3}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0

    .line 237
    .end local v0    # "item":Lmiui/maml/util/ConfigFile$Variable;
    .end local v3    # "values":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v4, "Variables"

    invoke-static {p1, v4, v6}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 222
    return-void
.end method


# virtual methods
.method public getGadgets()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/ConfigFile$Gadget;",
            ">;"
        }
    .end annotation

    .prologue
    .line 106
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTask(Ljava/lang/String;)Lmiui/maml/util/Task;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 399
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/Task;

    return-object v0
.end method

.method public getTasks()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/Task;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getVariable(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 354
    iget-object v2, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/util/ConfigFile$Variable;

    .line 355
    .local v0, "item":Lmiui/maml/util/ConfigFile$Variable;
    if-nez v0, :cond_0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmiui/maml/util/ConfigFile$Variable;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getVariables()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lmiui/maml/util/ConfigFile$Variable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 98
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)Z
    .locals 14
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v13, 0x0

    .line 182
    iput-object p1, p0, Lmiui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    .line 183
    iget-object v11, p0, Lmiui/maml/util/ConfigFile;->mVariables:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 184
    iget-object v11, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 185
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    .line 186
    .local v1, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v0, 0x0

    .line 187
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v8, 0x0

    .line 189
    .local v8, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    invoke-direct {v9, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_b
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    .end local v8    # "is":Ljava/io/InputStream;
    .local v9, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 191
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v0, v9}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 192
    .local v2, "doc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v10

    .line 193
    .local v10, "root":Lorg/w3c/dom/Element;
    if-nez v10, :cond_1

    .line 214
    if-eqz v9, :cond_0

    .line 215
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 194
    :cond_0
    :goto_0
    return v13

    .line 216
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    .line 196
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :try_start_3
    invoke-interface {v10}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "Config"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v11

    if-nez v11, :cond_3

    .line 214
    if-eqz v9, :cond_2

    .line 215
    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 197
    :cond_2
    :goto_1
    return v13

    .line 216
    :catch_1
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 199
    .end local v4    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_5
    invoke-direct {p0, v10}, Lmiui/maml/util/ConfigFile;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 200
    invoke-direct {p0, v10}, Lmiui/maml/util/ConfigFile;->loadTasks(Lorg/w3c/dom/Element;)V

    .line 201
    invoke-direct {p0, v10}, Lmiui/maml/util/ConfigFile;->loadGadgets(Lorg/w3c/dom/Element;)V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_e
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_10
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_12
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 202
    const/4 v11, 0x1

    .line 214
    if-eqz v9, :cond_4

    .line 215
    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    .line 202
    :cond_4
    :goto_2
    return v11

    .line 216
    :catch_2
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 210
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "is":Ljava/io/InputStream;
    .end local v10    # "root":Lorg/w3c/dom/Element;
    .local v0, "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_3
    move-exception v5

    .line 211
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "is":Ljava/io/InputStream;
    .local v5, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_7
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 214
    if-eqz v8, :cond_5

    .line 215
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    .line 219
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_4
    return v13

    .line 216
    .restart local v5    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 208
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_5
    move-exception v4

    .line 209
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_5
    :try_start_9
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 214
    if-eqz v8, :cond_5

    .line 215
    :try_start_a
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_4

    .line 216
    :catch_6
    move-exception v4

    goto :goto_4

    .line 206
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v7

    .line 207
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "is":Ljava/io/InputStream;
    .local v7, "e":Lorg/xml/sax/SAXException;
    :goto_6
    :try_start_b
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 214
    if-eqz v8, :cond_5

    .line 215
    :try_start_c
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_4

    .line 216
    :catch_8
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 204
    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "e":Lorg/xml/sax/SAXException;
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_9
    move-exception v6

    .line 205
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "is":Ljava/io/InputStream;
    .local v6, "e":Ljavax/xml/parsers/ParserConfigurationException;
    :goto_7
    :try_start_d
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 214
    if-eqz v8, :cond_5

    .line 215
    :try_start_e
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_4

    .line 216
    :catch_a
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 203
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .restart local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v8    # "is":Ljava/io/InputStream;
    :catch_b
    move-exception v3

    .line 214
    .end local v0    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v8    # "is":Ljava/io/InputStream;
    .local v3, "e":Ljava/io/FileNotFoundException;
    :goto_8
    if-eqz v8, :cond_5

    .line 215
    :try_start_f
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c

    goto :goto_4

    .line 216
    :catch_c
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 212
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 214
    :goto_9
    if-eqz v8, :cond_6

    .line 215
    :try_start_10
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_d

    .line 212
    :cond_6
    :goto_a
    throw v11

    .line 216
    :catch_d
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 212
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .local v8, "is":Ljava/io/InputStream;
    goto :goto_9

    .line 203
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_e
    move-exception v3

    .restart local v3    # "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_8

    .line 204
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_f
    move-exception v6

    .restart local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 206
    .end local v6    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_10
    move-exception v7

    .restart local v7    # "e":Lorg/xml/sax/SAXException;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_6

    .line 208
    .end local v7    # "e":Lorg/xml/sax/SAXException;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_11
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 210
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "is":Ljava/io/InputStream;
    .restart local v9    # "is":Ljava/io/InputStream;
    :catch_12
    move-exception v5

    .restart local v5    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "is":Ljava/io/InputStream;
    .restart local v8    # "is":Ljava/io/InputStream;
    goto :goto_3
.end method

.method public loadDefaultSettings(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "root"    # Lorg/w3c/dom/Element;

    .prologue
    .line 418
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Config"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    const-string/jumbo v0, "Group"

    new-instance v1, Lmiui/maml/util/ConfigFile$4;

    invoke-direct {v1, p0}, Lmiui/maml/util/ConfigFile$4;-><init>(Lmiui/maml/util/ConfigFile;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 417
    return-void

    .line 419
    :cond_0
    return-void
.end method

.method public moveGadget(Lmiui/maml/util/ConfigFile$Gadget;I)V
    .locals 1
    .param p1, "g"    # Lmiui/maml/util/ConfigFile$Gadget;
    .param p2, "position"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 392
    :cond_0
    return-void
.end method

.method public putGadget(Lmiui/maml/util/ConfigFile$Gadget;)V
    .locals 1
    .param p1, "g"    # Lmiui/maml/util/ConfigFile$Gadget;

    .prologue
    .line 380
    if-nez p1, :cond_0

    .line 381
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 379
    return-void
.end method

.method public putNumber(Ljava/lang/String;D)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 369
    invoke-static {p2, p3}, Lmiui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lmiui/maml/util/ConfigFile;->putNumber(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    return-void
.end method

.method public putNumber(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 364
    const-string/jumbo v0, "number"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 363
    return-void
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 359
    const-string/jumbo v0, "string"

    invoke-direct {p0, p1, p2, v0}, Lmiui/maml/util/ConfigFile;->put(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 358
    return-void
.end method

.method public putTask(Lmiui/maml/util/Task;)V
    .locals 2
    .param p1, "task"    # Lmiui/maml/util/Task;

    .prologue
    .line 373
    if-eqz p1, :cond_0

    iget-object v0, p1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    :cond_0
    return-void

    .line 375
    :cond_1
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mTasks:Ljava/util/HashMap;

    iget-object v1, p1, Lmiui/maml/util/Task;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 372
    return-void
.end method

.method public removeGadget(Lmiui/maml/util/ConfigFile$Gadget;)V
    .locals 1
    .param p1, "g"    # Lmiui/maml/util/ConfigFile$Gadget;

    .prologue
    .line 387
    iget-object v0, p0, Lmiui/maml/util/ConfigFile;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 388
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 386
    return-void
.end method

.method public save(Landroid/content/Context;)Z
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 110
    iget-boolean v0, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 111
    .local v0, "dirty":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lmiui/maml/util/ConfigFile;->mDirty:Z

    .line 112
    if-eqz v0, :cond_0

    iget-object v1, p0, Lmiui/maml/util/ConfigFile;->mFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lmiui/maml/util/ConfigFile;->save(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public save(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 11
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 120
    invoke-static {p1}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z

    .line 121
    const/4 v5, 0x0

    .line 123
    .local v5, "tempConfigPath":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lmiui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v5    # "tempConfigPath":Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 147
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v6, "Config"

    invoke-static {v4, v6, v9}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 148
    invoke-direct {p0, v4}, Lmiui/maml/util/ConfigFile;->writeVariables(Ljava/lang/StringBuilder;)V

    .line 149
    invoke-direct {p0, v4}, Lmiui/maml/util/ConfigFile;->writeTasks(Ljava/lang/StringBuilder;)V

    .line 150
    invoke-direct {p0, v4}, Lmiui/maml/util/ConfigFile;->writeGadgets(Ljava/lang/StringBuilder;)V

    .line 151
    const-string/jumbo v6, "Config"

    invoke-static {v4, v6, v10}, Lmiui/maml/util/ConfigFile;->writeTag(Ljava/lang/StringBuilder;Ljava/lang/String;Z)V

    .line 154
    :try_start_1
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 155
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v6}, Lmiui/content/res/ThemeNativeUtils;->write(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 168
    :goto_1
    const-string/jumbo v6, "/data/system/theme/config.config"

    invoke-static {v6}, Lmiui/content/res/ThemeNativeUtils;->updateFilePermissionWithThemeContext(Ljava/lang/String;)Z

    .line 169
    return v10

    .line 141
    .end local v4    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "tempConfigPath":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 142
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ConfigFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "create target file or temp file failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    return v9

    .line 124
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 126
    .local v0, "e":Ljava/io/IOException;
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {p2, v6}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 127
    .local v3, "file":Ljava/io/File;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x17

    if-lt v6, v7, :cond_1

    .line 128
    if-eqz v3, :cond_0

    .line 129
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 130
    const-string/jumbo v7, "temp"

    .line 129
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 136
    .end local v5    # "tempConfigPath":Ljava/lang/String;
    :cond_0
    :goto_2
    invoke-direct {p0, v5}, Lmiui/maml/util/ConfigFile;->createNewFile(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 137
    .end local v3    # "file":Ljava/io/File;
    :catch_2
    move-exception v2

    .line 138
    .local v2, "e1":Ljava/lang/Exception;
    const-string/jumbo v6, "ConfigFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "create target file failed"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return v9

    .line 133
    .end local v2    # "e1":Ljava/lang/Exception;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "tempConfigPath":Ljava/lang/String;
    :cond_1
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "temp"

    const/4 v8, 0x0

    invoke-virtual {p2, v7, v8}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 134
    const-string/jumbo v7, "temp"

    .line 133
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v5

    .local v5, "tempConfigPath":Ljava/lang/String;
    goto :goto_2

    .line 156
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .end local v5    # "tempConfigPath":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    :try_start_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 157
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lmiui/content/res/ThemeNativeUtils;->write(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-static {v5, p1}, Lmiui/content/res/ThemeNativeUtils;->copy(Ljava/lang/String;Ljava/lang/String;)Z

    .line 159
    invoke-static {v5}, Lmiui/content/res/ThemeNativeUtils;->remove(Ljava/lang/String;)Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto/16 :goto_1

    .line 164
    :catch_3
    move-exception v1

    .line 165
    .restart local v1    # "e":Ljava/lang/Exception;
    const-string/jumbo v6, "ConfigFile"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "write file error"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v9

    .line 161
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    :try_start_5
    const-string/jumbo v6, "ConfigFile"

    const-string/jumbo v7, "target file and temp file are not exists"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 162
    return v9
.end method
