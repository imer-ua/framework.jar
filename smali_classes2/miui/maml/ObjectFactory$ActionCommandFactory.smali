.class public abstract Lmiui/maml/ObjectFactory$ActionCommandFactory;
.super Lmiui/maml/ObjectFactory$ObjectFactoryBase;
.source "ObjectFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/ObjectFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ActionCommandFactory"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lmiui/maml/ObjectFactory$ObjectFactoryBase",
        "<",
        "Lmiui/maml/ObjectFactory$ActionCommandFactory;",
        ">;"
    }
.end annotation


# static fields
.field public static final NAME:Ljava/lang/String; = "ActionCommand"


# direct methods
.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "ActionCommand"

    invoke-direct {p0, v0}, Lmiui/maml/ObjectFactory$ObjectFactoryBase;-><init>(Ljava/lang/String;)V

    .line 65
    return-void
.end method


# virtual methods
.method public final create(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lmiui/maml/ActionCommand;
    .locals 3
    .param p1, "screenElement"    # Lmiui/maml/elements/ScreenElement;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v1, 0x0

    .line 70
    invoke-virtual {p0, p1, p2}, Lmiui/maml/ObjectFactory$ActionCommandFactory;->doCreate(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lmiui/maml/ActionCommand;

    move-result-object v0

    .line 71
    .local v0, "ret":Lmiui/maml/ActionCommand;
    if-eqz v0, :cond_0

    .line 72
    return-object v0

    .line 73
    :cond_0
    iget-object v2, p0, Lmiui/maml/ObjectFactory$ObjectFactoryBase;->mOld:Lmiui/maml/ObjectFactory;

    if-nez v2, :cond_1

    :goto_0
    return-object v1

    :cond_1
    iget-object v1, p0, Lmiui/maml/ObjectFactory$ObjectFactoryBase;->mOld:Lmiui/maml/ObjectFactory;

    check-cast v1, Lmiui/maml/ObjectFactory$ActionCommandFactory;

    invoke-virtual {v1, p1, p2}, Lmiui/maml/ObjectFactory$ActionCommandFactory;->create(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lmiui/maml/ActionCommand;

    move-result-object v1

    goto :goto_0
.end method

.method protected abstract doCreate(Lmiui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lmiui/maml/ActionCommand;
.end method
