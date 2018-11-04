.class public Lmiui/maml/data/WebServiceBinder;
.super Lmiui/maml/data/VariableBinder;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/data/WebServiceBinder$AuthToken;,
        Lmiui/maml/data/WebServiceBinder$List;,
        Lmiui/maml/data/WebServiceBinder$QueryThread;,
        Lmiui/maml/data/WebServiceBinder$RequestMethod;,
        Lmiui/maml/data/WebServiceBinder$ResponseProtocol;,
        Lmiui/maml/data/WebServiceBinder$Variable;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WebServiceBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "WebServiceBinder"


# instance fields
.field private mAuthentication:Z

.field mContentStringVar:Lmiui/maml/data/IndexedVariable;

.field public mEncryptedUser:Ljava/lang/String;

.field mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

.field mErrorStringVar:Lmiui/maml/data/IndexedVariable;

.field private mLastQueryTime:J

.field private mList:Lmiui/maml/data/WebServiceBinder$List;

.field private mParamsFormatter:Lmiui/maml/util/TextFormatter;

.field private mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

.field private mQueryInProgress:Z

.field private mQueryThread:Ljava/lang/Thread;

.field mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

.field private mSecure:Z

.field public mSecurity:Ljava/lang/String;

.field private mServiceId:Ljava/lang/String;

.field public mServiceToken:Ljava/lang/String;

.field mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

.field private mUpdateInterval:I

.field protected mUriFormatter:Lmiui/maml/util/TextFormatter;

.field private mUseNetwork:I

.field private mUseNetworkExp:Lmiui/maml/data/Expression;


# direct methods
.method static synthetic -get0(Lmiui/maml/data/WebServiceBinder;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    return v0
.end method

.method static synthetic -get1(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    return-object v0
.end method

.method static synthetic -get2(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    return-object v0
.end method

.method static synthetic -get3(Lmiui/maml/data/WebServiceBinder;)Z
    .locals 1

    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    return v0
.end method

.method static synthetic -get4(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -set0(Lmiui/maml/data/WebServiceBinder;Z)Z
    .locals 0

    iput-boolean p1, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    return p1
.end method

.method static synthetic -wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V
    .locals 0
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic -wrap1(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseJson(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V
    .locals 0
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->processResponseXml(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lmiui/maml/data/WebServiceBinder;I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->setErrorCode(I)V

    return-void
.end method

.method static synthetic -wrap4(Lmiui/maml/data/WebServiceBinder;I)V
    .locals 0
    .param p1, "code"    # I

    .prologue
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->setStatusCode(I)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 393
    invoke-direct {p0, p1, p2}, Lmiui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    .line 106
    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    .line 113
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    .line 124
    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    .line 394
    invoke-direct {p0, p1}, Lmiui/maml/data/WebServiceBinder;->load(Lorg/w3c/dom/Element;)V

    .line 392
    return-void
.end method

.method private canUseNetwork()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 563
    iget v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 564
    return v3

    .line 565
    :cond_0
    iget v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    if-nez v0, :cond_1

    .line 566
    return v2

    .line 567
    :cond_1
    iget v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    if-ne v0, v3, :cond_2

    .line 568
    invoke-static {}, Lmiui/net/ConnectivityHelper;->getInstance()Lmiui/net/ConnectivityHelper;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/net/ConnectivityHelper;->isWifiConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 569
    return v3

    .line 571
    :cond_2
    return v2
.end method

.method private handleException(Ljava/lang/Exception;)V
    .locals 2
    .param p1, "e"    # Ljava/lang/Exception;

    .prologue
    .line 621
    const-string/jumbo v0, "WebServiceBinder"

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 622
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 623
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/data/WebServiceBinder;->setErrorString(Ljava/lang/String;)V

    .line 620
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 14
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 455
    if-nez p1, :cond_0

    .line 456
    const-string/jumbo v0, "WebServiceBinder"

    const-string/jumbo v2, "WebServiceBinder node is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "node is null"

    invoke-direct {v0, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    const-string/jumbo v0, "requestMethod"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 460
    .local v10, "requestMethod":Ljava/lang/String;
    const-string/jumbo v0, "get"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 461
    sget-object v0, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    .line 464
    :cond_1
    const-string/jumbo v0, "queryAtStart"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 465
    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v1

    .line 466
    .local v1, "vars":Lmiui/maml/data/Variables;
    const-string/jumbo v0, "uriExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    .line 467
    .local v5, "uriExp":Lmiui/maml/data/Expression;
    const-string/jumbo v0, "uriFormatExp"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v6

    .line 468
    .local v6, "uriFormatExp":Lmiui/maml/data/Expression;
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v2, "uri"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "uriFormat"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 469
    const-string/jumbo v4, "uriParas"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 468
    invoke-direct/range {v0 .. v6}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lmiui/maml/data/Expression;Lmiui/maml/data/Expression;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    .line 470
    new-instance v0, Lmiui/maml/util/TextFormatter;

    const-string/jumbo v2, "params"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 471
    const-string/jumbo v3, "paramsFormat"

    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "paramsParas"

    invoke-interface {p1, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 470
    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/maml/util/TextFormatter;-><init>(Lmiui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mParamsFormatter:Lmiui/maml/util/TextFormatter;

    .line 472
    const-string/jumbo v0, "updateInterval"

    const/4 v2, -0x1

    invoke-static {p1, v0, v2}, Lmiui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    .line 474
    const-string/jumbo v0, "protocol"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lmiui/maml/data/WebServiceBinder;->parseProtocol(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v0, "authentication"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mAuthentication:Z

    .line 478
    const-string/jumbo v0, "secure"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecure:Z

    .line 479
    const-string/jumbo v0, "serviceID"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceId:Ljava/lang/String;

    .line 481
    const-string/jumbo v0, "useNetwork"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 482
    .local v11, "useNetwork":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "all"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 483
    :cond_2
    const/4 v0, 0x2

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    .line 492
    :goto_0
    invoke-virtual {p0, p1}, Lmiui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 494
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 495
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "statusCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v13}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    .line 496
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorCode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v13}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    .line 497
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "errorString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v12}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    .line 499
    const-string/jumbo v0, "dbgContentString"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    .line 500
    .local v7, "dbgContent":Z
    if-eqz v7, :cond_3

    .line 501
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lmiui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "contentString"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1, v12}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    .line 505
    .end local v7    # "dbgContent":Z
    :cond_3
    const-string/jumbo v0, "List"

    invoke-static {p1, v0}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v9

    .line 506
    .local v9, "list":Lorg/w3c/dom/Element;
    if-eqz v9, :cond_4

    .line 508
    :try_start_0
    new-instance v0, Lmiui/maml/data/WebServiceBinder$List;

    iget-object v2, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v0, v9, v2}, Lmiui/maml/data/WebServiceBinder$List;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 454
    :cond_4
    :goto_1
    return-void

    .line 484
    .end local v9    # "list":Lorg/w3c/dom/Element;
    :cond_5
    const-string/jumbo v0, "wifi"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 485
    iput v13, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto/16 :goto_0

    .line 486
    :cond_6
    const-string/jumbo v0, "none"

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 487
    iput v12, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    goto/16 :goto_0

    .line 489
    :cond_7
    invoke-static {v1, v11}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    goto/16 :goto_0

    .line 509
    .restart local v9    # "list":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v8

    .line 510
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v0, "WebServiceBinder"

    const-string/jumbo v2, "invalid List"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private parseProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;

    .prologue
    .line 516
    const-string/jumbo v0, "xml"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    .line 515
    :cond_0
    :goto_0
    return-void

    .line 518
    :cond_1
    const-string/jumbo v0, "json/obj"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 519
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_0

    .line 520
    :cond_2
    const-string/jumbo v0, "json/array"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 521
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_0

    .line 522
    :cond_3
    const-string/jumbo v0, "bitmap"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 523
    sget-object v0, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    goto :goto_0
.end method

.method private processResponseJson(Ljava/lang/String;)V
    .locals 10
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 628
    const/4 v2, 0x0

    .line 629
    .local v2, "jpath":Lmiui/maml/util/JSONPath;
    :try_start_0
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mProtocol:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    sget-object v9, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    if-ne v8, v9, :cond_1

    .line 630
    new-instance v3, Lmiui/maml/util/JSONPath;

    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONObject;)V

    .local v3, "jpath":Lmiui/maml/util/JSONPath;
    move-object v2, v3

    .line 635
    .end local v3    # "jpath":Lmiui/maml/util/JSONPath;
    .local v2, "jpath":Lmiui/maml/util/JSONPath;
    :goto_0
    iget-object v8, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "var$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmiui/maml/data/VariableBinder$Variable;

    .line 636
    .local v6, "var":Lmiui/maml/data/VariableBinder$Variable;
    move-object v0, v6

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    move-object v5, v0

    .line 637
    .local v5, "v":Lmiui/maml/data/WebServiceBinder$Variable;
    iget-object v8, v5, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v5, v8}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 645
    .end local v2    # "jpath":Lmiui/maml/util/JSONPath;
    .end local v5    # "v":Lmiui/maml/data/WebServiceBinder$Variable;
    .end local v6    # "var":Lmiui/maml/data/VariableBinder$Variable;
    .end local v7    # "var$iterator":Ljava/util/Iterator;
    :catch_0
    move-exception v1

    .line 646
    .local v1, "e":Lorg/json/JSONException;
    invoke-direct {p0, v1}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V

    .line 626
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_0
    :goto_2
    return-void

    .line 632
    .local v2, "jpath":Lmiui/maml/util/JSONPath;
    :cond_1
    :try_start_1
    new-instance v3, Lmiui/maml/util/JSONPath;

    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Lmiui/maml/util/JSONPath;-><init>(Lorg/json/JSONArray;)V

    .restart local v3    # "jpath":Lmiui/maml/util/JSONPath;
    move-object v2, v3

    .end local v3    # "jpath":Lmiui/maml/util/JSONPath;
    .local v2, "jpath":Lmiui/maml/util/JSONPath;
    goto :goto_0

    .line 639
    .restart local v7    # "var$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    if-eqz v8, :cond_0

    .line 640
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    iget-object v8, v8, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lmiui/maml/util/JSONPath;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 641
    .local v4, "obj":Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v8, v4, Lorg/json/JSONArray;

    if-eqz v8, :cond_0

    .line 642
    iget-object v8, p0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    nop

    nop

    .end local v4    # "obj":Ljava/lang/Object;
    invoke-virtual {v8, v4}, Lmiui/maml/data/WebServiceBinder$List;->fill(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private processResponseXml(Ljava/lang/String;)V
    .locals 23
    .param p1, "response"    # Ljava/lang/String;

    .prologue
    .line 575
    invoke-static {}, Ljavax/xml/xpath/XPathFactory;->newInstance()Ljavax/xml/xpath/XPathFactory;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/xml/xpath/XPathFactory;->newXPath()Ljavax/xml/xpath/XPath;

    move-result-object v19

    .line 576
    .local v19, "xpath":Ljavax/xml/xpath/XPath;
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v4

    .line 577
    .local v4, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v12, 0x0

    .line 579
    .local v12, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    .line 580
    .local v3, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v13, Ljava/io/ByteArrayInputStream;

    const-string/jumbo v20, "utf-8"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v13, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_e
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_f
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 581
    .end local v12    # "is":Ljava/io/InputStream;
    .local v13, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v3, v13}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v5

    .line 582
    .local v5, "doc":Lorg/w3c/dom/Document;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "var$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmiui/maml/data/VariableBinder$Variable;

    .line 583
    .local v17, "var":Lmiui/maml/data/VariableBinder$Variable;
    move-object/from16 v0, v17

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    move-object v14, v0
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_12
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 585
    .local v14, "v":Lmiui/maml/data/WebServiceBinder$Variable;
    :try_start_2
    iget-object v0, v14, Lmiui/maml/data/WebServiceBinder$Variable;->mPath:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Ljavax/xml/xpath/XPathConstants;->STRING:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v5, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v15

    .line 586
    .local v15, "value":Ljava/lang/Object;
    invoke-virtual {v14, v15}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V
    :try_end_2
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_12
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 587
    .end local v15    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v10

    .line 588
    .local v10, "e":Ljavax/xml/xpath/XPathExpressionException;
    const/16 v20, 0x0

    :try_start_3
    move-object/from16 v0, v20

    invoke-virtual {v14, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    .line 589
    const-string/jumbo v20, "WebServiceBinder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "fail to get variable: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v14, Lmiui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_11
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_12
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 601
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .end local v14    # "v":Lmiui/maml/data/WebServiceBinder$Variable;
    .end local v17    # "var":Lmiui/maml/data/VariableBinder$Variable;
    .end local v18    # "var$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v9

    .local v9, "e":Ljavax/xml/parsers/ParserConfigurationException;
    move-object v12, v13

    .line 602
    .end local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "is":Ljava/io/InputStream;
    :goto_1
    :try_start_4
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 613
    if-eqz v12, :cond_0

    .line 614
    :try_start_5
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_c

    .line 574
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :cond_0
    :goto_2
    return-void

    .line 593
    .restart local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v18    # "var$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object/from16 v20, v0
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_11
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_12
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    if-eqz v20, :cond_2

    .line 595
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder$List;->mDataPath:Ljava/lang/String;

    move-object/from16 v20, v0

    sget-object v21, Ljavax/xml/xpath/XPathConstants;->NODESET:Ljavax/xml/namespace/QName;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-interface {v0, v1, v5, v2}, Ljavax/xml/xpath/XPath;->evaluate(Ljava/lang/String;Ljava/lang/Object;Ljavax/xml/namespace/QName;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lorg/w3c/dom/NodeList;

    .line 596
    .local v16, "value":Lorg/w3c/dom/NodeList;
    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lmiui/maml/data/WebServiceBinder$List;->fill(Lorg/w3c/dom/NodeList;)V
    :try_end_7
    .catch Ljavax/xml/xpath/XPathExpressionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_7 .. :try_end_7} :catch_10
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_11
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_12
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 613
    .end local v16    # "value":Lorg/w3c/dom/NodeList;
    :cond_2
    :goto_3
    if-eqz v13, :cond_3

    .line 614
    :try_start_8
    invoke-virtual {v13}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :cond_3
    :goto_4
    move-object v12, v13

    .end local v13    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    goto :goto_2

    .line 597
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    :catch_2
    move-exception v10

    .line 598
    .restart local v10    # "e":Ljavax/xml/xpath/XPathExpressionException;
    :try_start_9
    const-string/jumbo v20, "WebServiceBinder"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v22, "fail to get list: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/data/WebServiceBinder;->mList:Lmiui/maml/data/WebServiceBinder$List;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lmiui/maml/data/WebServiceBinder$List;->-get0(Lmiui/maml/data/WebServiceBinder$List;)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string/jumbo v22, " :"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_9 .. :try_end_9} :catch_10
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_11
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_12
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_3

    .line 603
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v10    # "e":Ljavax/xml/xpath/XPathExpressionException;
    .end local v18    # "var$iterator":Ljava/util/Iterator;
    :catch_3
    move-exception v11

    .local v11, "e":Lorg/xml/sax/SAXException;
    move-object v12, v13

    .line 604
    .end local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v13    # "is":Ljava/io/InputStream;
    :goto_5
    :try_start_a
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 613
    if-eqz v12, :cond_0

    .line 614
    :try_start_b
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    goto :goto_2

    .line 615
    :catch_4
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    goto :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    .end local v11    # "e":Lorg/xml/sax/SAXException;
    .restart local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v5    # "doc":Lorg/w3c/dom/Document;
    .restart local v13    # "is":Ljava/io/InputStream;
    .restart local v18    # "var$iterator":Ljava/util/Iterator;
    :catch_5
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 609
    .end local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .end local v5    # "doc":Lorg/w3c/dom/Document;
    .end local v6    # "e":Ljava/io/IOException;
    .end local v13    # "is":Ljava/io/InputStream;
    .end local v18    # "var$iterator":Ljava/util/Iterator;
    .local v12, "is":Ljava/io/InputStream;
    :catch_6
    move-exception v8

    .line 610
    .end local v12    # "is":Ljava/io/InputStream;
    .local v8, "e":Ljava/lang/Exception;
    :goto_6
    :try_start_c
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 613
    if-eqz v12, :cond_0

    .line 614
    :try_start_d
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto/16 :goto_2

    .line 615
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 607
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v6

    .line 608
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v6    # "e":Ljava/io/IOException;
    :goto_7
    :try_start_e
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 613
    if-eqz v12, :cond_0

    .line 614
    :try_start_f
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9

    goto/16 :goto_2

    .line 615
    :catch_9
    move-exception v6

    goto/16 :goto_2

    .line 605
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v12    # "is":Ljava/io/InputStream;
    :catch_a
    move-exception v7

    .line 606
    .end local v12    # "is":Ljava/io/InputStream;
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    :goto_8
    :try_start_10
    move-object/from16 v0, p0

    invoke-direct {v0, v7}, Lmiui/maml/data/WebServiceBinder;->handleException(Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 613
    if-eqz v12, :cond_0

    .line 614
    :try_start_11
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto/16 :goto_2

    .line 615
    :catch_b
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_c
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto/16 :goto_2

    .line 611
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catchall_0
    move-exception v20

    .line 613
    :goto_9
    if-eqz v12, :cond_4

    .line 614
    :try_start_12
    invoke-virtual {v12}, Ljava/io/ByteArrayInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_d

    .line 611
    :cond_4
    :goto_a
    throw v20

    .line 615
    :catch_d
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_a

    .line 611
    .end local v6    # "e":Ljava/io/IOException;
    .restart local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v13    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v20

    move-object v12, v13

    .end local v13    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    goto :goto_9

    .line 601
    .end local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .local v12, "is":Ljava/io/InputStream;
    :catch_e
    move-exception v9

    .restart local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    goto/16 :goto_1

    .line 603
    .end local v9    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_f
    move-exception v11

    .restart local v11    # "e":Lorg/xml/sax/SAXException;
    goto :goto_5

    .line 605
    .end local v11    # "e":Lorg/xml/sax/SAXException;
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v3    # "db":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v13    # "is":Ljava/io/InputStream;
    :catch_10
    move-exception v7

    .restart local v7    # "e":Ljava/io/UnsupportedEncodingException;
    move-object v12, v13

    .end local v13    # "is":Ljava/io/InputStream;
    .local v12, "is":Ljava/io/InputStream;
    goto :goto_8

    .line 607
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    :catch_11
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v12, v13

    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    goto :goto_7

    .line 609
    .end local v6    # "e":Ljava/io/IOException;
    .end local v12    # "is":Ljava/io/InputStream;
    .restart local v13    # "is":Ljava/io/InputStream;
    :catch_12
    move-exception v8

    .restart local v8    # "e":Ljava/lang/Exception;
    move-object v12, v13

    .end local v13    # "is":Ljava/io/InputStream;
    .restart local v12    # "is":Ljava/io/InputStream;
    goto :goto_6
.end method

.method private setErrorCode(I)V
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 895
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    .line 896
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 898
    :cond_0
    const-string/jumbo v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QueryThread error: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    return-void
.end method

.method private setErrorString(Ljava/lang/String;)V
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 902
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 901
    :cond_0
    return-void
.end method

.method private setStatusCode(I)V
    .locals 4
    .param p1, "code"    # I

    .prologue
    .line 908
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    .line 909
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mStatusCodeVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, p1

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 911
    :cond_0
    const-string/jumbo v0, "WebServiceBinder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "QueryThread status code: #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    return-void
.end method

.method private tryStartQuery()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 445
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    sub-long v0, v2, v4

    .line 446
    .local v0, "time":J
    cmp-long v2, v0, v6

    if-gez v2, :cond_0

    .line 447
    iput-wide v6, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    .line 449
    :cond_0
    iget-wide v2, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    cmp-long v2, v2, v6

    if-eqz v2, :cond_1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    if-lez v2, :cond_2

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUpdateInterval:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 450
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    .line 444
    :cond_2
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 0

    .prologue
    .line 421
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->finish()V

    .line 420
    return-void
.end method

.method public init()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v0, 0x0

    .line 399
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->init()V

    .line 400
    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    .line 401
    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    .line 402
    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    .line 404
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    .line 405
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetworkExp:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    .line 409
    :cond_0
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 410
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/data/WebServiceBinder$Variable;

    iget-object v1, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    .line 413
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_2

    .line 414
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    .line 415
    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    .line 398
    :cond_2
    return-void
.end method

.method protected bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/VariableBinder$Variable;
    .locals 1
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 528
    invoke-virtual {p0, p1}, Lmiui/maml/data/WebServiceBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;

    move-result-object v0

    return-object v0
.end method

.method protected onLoadVariable(Lorg/w3c/dom/Element;)Lmiui/maml/data/WebServiceBinder$Variable;
    .locals 2
    .param p1, "child"    # Lorg/w3c/dom/Element;

    .prologue
    .line 529
    new-instance v0, Lmiui/maml/data/WebServiceBinder$Variable;

    invoke-virtual {p0}, Lmiui/maml/data/VariableBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v1

    iget-object v1, v1, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    invoke-direct {v0, p1, v1}, Lmiui/maml/data/WebServiceBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/data/Variables;)V

    return-object v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 426
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->pause()V

    .line 425
    return-void
.end method

.method public processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V
    .locals 6
    .param p1, "response"    # Lmiui/maml/util/net/SimpleRequest$StreamContent;

    .prologue
    .line 651
    iget-object v4, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v4, v5, :cond_0

    .line 652
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "no image element var"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return-void

    .line 656
    :cond_0
    invoke-virtual {p1}, Lmiui/maml/util/net/SimpleRequest$StreamContent;->getStream()Ljava/io/InputStream;

    move-result-object v2

    .line 658
    .local v2, "is":Ljava/io/InputStream;
    iget-object v4, p0, Lmiui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/data/WebServiceBinder$Variable;

    .line 660
    .local v3, "v":Lmiui/maml/data/WebServiceBinder$Variable;
    iget-object v4, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v4}, Lmiui/maml/ScreenElementRoot;->getCacheDir()Ljava/lang/String;

    move-result-object v1

    .line 661
    .local v1, "cacheDir":Ljava/lang/String;
    invoke-static {v3, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->-wrap0(Lmiui/maml/data/WebServiceBinder$Variable;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 664
    invoke-virtual {v3, v2, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->saveCache(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 666
    invoke-virtual {v3, v1}, Lmiui/maml/data/WebServiceBinder$Variable;->loadCache(Ljava/lang/String;)V

    .line 682
    :goto_0
    invoke-static {v2}, Lmiui/maml/util/net/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 650
    return-void

    .line 669
    :cond_1
    const/4 v0, 0x0

    .line 670
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_3

    .line 671
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 672
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_2

    .line 673
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "decoded bitmap is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    :cond_2
    :goto_1
    invoke-virtual {v3, v0}, Lmiui/maml/data/WebServiceBinder$Variable;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 676
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    :cond_3
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "response stream is null"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public refresh()V
    .locals 0

    .prologue
    .line 440
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->refresh()V

    .line 441
    invoke-virtual {p0}, Lmiui/maml/data/WebServiceBinder;->startQuery()V

    .line 439
    return-void
.end method

.method public resume()V
    .locals 1

    .prologue
    .line 431
    invoke-super {p0}, Lmiui/maml/data/VariableBinder;->resume()V

    .line 433
    iget-boolean v0, p0, Lmiui/maml/data/VariableBinder;->mQueryAtStart:Z

    if-eqz v0, :cond_0

    .line 434
    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->tryStartQuery()V

    .line 430
    :cond_0
    return-void
.end method

.method public startQuery()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 534
    iget-object v0, p0, Lmiui/maml/data/VariableBinder;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, v2}, Lmiui/maml/ScreenElementRoot;->getCapability(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 535
    const-string/jumbo v0, "WebServiceBinder"

    const-string/jumbo v1, "capability disabled: webservice"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return-void

    .line 539
    :cond_0
    iget-boolean v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    if-eqz v0, :cond_1

    .line 540
    return-void

    .line 543
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lmiui/maml/data/WebServiceBinder;->mLastQueryTime:J

    .line 544
    invoke-direct {p0}, Lmiui/maml/data/WebServiceBinder;->canUseNetwork()Z

    move-result v0

    if-nez v0, :cond_4

    .line 545
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_2

    .line 546
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorCodeVar:Lmiui/maml/data/IndexedVariable;

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 548
    :cond_2
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_3

    .line 549
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mErrorStringVar:Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel query because current network is forbidden by useNetwork config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 550
    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    .line 549
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 552
    :cond_3
    const-string/jumbo v0, "WebServiceBinder"

    .line 553
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "cancel query because current network is forbidden by useNetwork config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lmiui/maml/data/WebServiceBinder;->mUseNetwork:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 552
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    return-void

    .line 557
    :cond_4
    iput-boolean v2, p0, Lmiui/maml/data/WebServiceBinder;->mQueryInProgress:Z

    .line 558
    new-instance v0, Lmiui/maml/data/WebServiceBinder$QueryThread;

    invoke-direct {v0, p0}, Lmiui/maml/data/WebServiceBinder$QueryThread;-><init>(Lmiui/maml/data/WebServiceBinder;)V

    iput-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    .line 559
    iget-object v0, p0, Lmiui/maml/data/WebServiceBinder;->mQueryThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 533
    return-void
.end method
