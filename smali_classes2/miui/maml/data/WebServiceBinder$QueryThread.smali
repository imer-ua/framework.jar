.class Lmiui/maml/data/WebServiceBinder$QueryThread;
.super Ljava/lang/Thread;
.source "WebServiceBinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/data/WebServiceBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryThread"
.end annotation


# static fields
.field private static final synthetic -miui-maml-data-WebServiceBinder$RequestMethodSwitchesValues:[I = null

.field private static final synthetic -miui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues:[I = null

.field private static final ERROR_IO_EXCEPTION:I = 0x8

.field private static final ERROR_OK:I = 0x0

.field private static final ERROR_SECURE_ACCOUNT_AUTHTOKEN_FAIL:I = 0x5

.field private static final ERROR_SECURE_ACCOUNT_NOT_LOGIN:I = 0x4

.field private static final ERROR_SECURE_CIPHER_EXCEPTION:I = 0x6

.field private static final ERROR_SECURE_INVALID_RESPONSE:I = 0x7

.field public static final ERROR_USE_NETWORK_FORBIDDEN:I = 0x3

.field private static final KEY_ENCRYPTED_USER_ID:Ljava/lang/String; = "encrypted_user_id"


# instance fields
.field final synthetic $SWITCH_TABLE$miui$maml$data$WebServiceBinder$RequestMethod:[I

.field final synthetic $SWITCH_TABLE$miui$maml$data$WebServiceBinder$ResponseProtocol:[I

.field final synthetic this$0:Lmiui/maml/data/WebServiceBinder;


# direct methods
.method private static synthetic -getmiui-maml-data-WebServiceBinder$RequestMethodSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$RequestMethodSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$RequestMethodSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$RequestMethod;->values()[Lmiui/maml/data/WebServiceBinder$RequestMethod;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->GET:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->INVALID:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/WebServiceBinder$RequestMethod;->POST:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$RequestMethodSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getmiui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues()[I
    .locals 3

    sget-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->values()[Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONarray:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->JSONobj:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->XML:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->-miui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method public constructor <init>(Lmiui/maml/data/WebServiceBinder;)V
    .locals 1
    .param p1, "this$0"    # Lmiui/maml/data/WebServiceBinder;

    .prologue
    .line 717
    iput-object p1, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    .line 718
    const-string/jumbo v0, "WebServiceBinder QueryThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 717
    return-void
.end method

.method private doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Lmiui/maml/data/WebServiceBinder$RequestMethod;
    .param p3, "auth"    # Z
    .param p4, "secure"    # Z

    .prologue
    .line 890
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;
    .locals 33
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "method"    # Lmiui/maml/data/WebServiceBinder$RequestMethod;
    .param p3, "auth"    # Z
    .param p4, "secure"    # Z
    .param p5, "retry"    # Z

    .prologue
    .line 763
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "doRequest"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v13, 0x0

    .line 766
    .local v13, "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v4}, Lmiui/maml/data/VariableBinder;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v4

    iget-object v12, v4, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 767
    .local v12, "context":Landroid/content/Context;
    invoke-static {v12}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v2

    .line 768
    .local v2, "accountManager":Landroid/accounts/AccountManager;
    if-eqz p3, :cond_7

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    if-nez v4, :cond_6

    .line 770
    :cond_0
    const/4 v3, 0x0

    .line 771
    .local v3, "account":Landroid/accounts/Account;
    const-string/jumbo v4, "com.xiaomi"

    invoke-virtual {v2, v4}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v10

    .line 772
    .local v10, "accounts":[Landroid/accounts/Account;
    array-length v4, v10

    if-lez v4, :cond_1

    .line 773
    const/4 v4, 0x0

    aget-object v3, v10, v4

    .line 775
    .end local v3    # "account":Landroid/accounts/Account;
    :cond_1
    if-nez v3, :cond_2

    .line 776
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x4

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    .line 777
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "xiaomi account not login"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 778
    const/4 v4, 0x0

    return-object v4

    .line 780
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const-string/jumbo v5, "encrypted_user_id"

    invoke-virtual {v2, v3, v5}, Landroid/accounts/AccountManager;->getUserData(Landroid/accounts/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->-get4(Lmiui/maml/data/WebServiceBinder;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 782
    invoke-virtual/range {v2 .. v8}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;ZLandroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object v23

    .line 784
    .local v23, "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    const/4 v11, 0x0

    .line 786
    .local v11, "authToken":Lmiui/maml/data/WebServiceBinder$AuthToken;
    if-eqz v23, :cond_4

    .line 787
    :try_start_0
    invoke-interface/range {v23 .. v23}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Landroid/os/Bundle;

    .line 788
    .local v30, "result":Landroid/os/Bundle;
    if-eqz v30, :cond_3

    .line 789
    const-string/jumbo v4, "authtoken"

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 790
    .local v22, "extTokenStr":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Lmiui/maml/data/WebServiceBinder$AuthToken;->parse(Ljava/lang/String;)Lmiui/maml/data/WebServiceBinder$AuthToken;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v11

    .line 807
    .end local v11    # "authToken":Lmiui/maml/data/WebServiceBinder$AuthToken;
    .end local v22    # "extTokenStr":Ljava/lang/String;
    .end local v30    # "result":Landroid/os/Bundle;
    :goto_0
    if-nez v11, :cond_5

    .line 808
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x5

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    .line 809
    const/4 v4, 0x0

    return-object v4

    .line 792
    .restart local v11    # "authToken":Lmiui/maml/data/WebServiceBinder$AuthToken;
    .restart local v30    # "result":Landroid/os/Bundle;
    :cond_3
    :try_start_1
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "getAuthToken: future getResult is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/accounts/OperationCanceledException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 797
    .end local v30    # "result":Landroid/os/Bundle;
    :catch_0
    move-exception v15

    .line 798
    .local v15, "e":Landroid/accounts/OperationCanceledException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4, v15}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_0

    .line 795
    .end local v15    # "e":Landroid/accounts/OperationCanceledException;
    :cond_4
    :try_start_2
    const-string/jumbo v4, "WebServiceBinder"

    const-string/jumbo v5, "getAuthToken: future is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/accounts/OperationCanceledException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/accounts/AuthenticatorException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 799
    :catch_1
    move-exception v14

    .line 800
    .local v14, "e":Landroid/accounts/AuthenticatorException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4, v14}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_0

    .line 803
    .end local v14    # "e":Landroid/accounts/AuthenticatorException;
    :catch_2
    move-exception v17

    .line 804
    .local v17, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_0

    .line 801
    .end local v17    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v16

    .line 802
    .local v16, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    goto :goto_0

    .line 811
    .end local v11    # "authToken":Lmiui/maml/data/WebServiceBinder$AuthToken;
    .end local v16    # "e":Ljava/io/IOException;
    :cond_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v11, Lmiui/maml/data/WebServiceBinder$AuthToken;->authToken:Ljava/lang/String;

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    .line 812
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v11, Lmiui/maml/data/WebServiceBinder$AuthToken;->security:Ljava/lang/String;

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    .line 814
    .end local v10    # "accounts":[Landroid/accounts/Account;
    .end local v23    # "future":Landroid/accounts/AccountManagerFuture;, "Landroid/accounts/AccountManagerFuture<Landroid/os/Bundle;>;"
    :cond_6
    new-instance v13, Ljava/util/HashMap;

    .end local v13    # "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 815
    .local v13, "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "cUserId"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mEncryptedUser:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 816
    const-string/jumbo v4, "serviceToken"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v13, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 819
    .end local v13    # "cookies":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_7
    new-instance v26, Ljava/util/HashMap;

    invoke-direct/range {v26 .. v26}, Ljava/util/HashMap;-><init>()V

    .line 820
    .local v26, "params":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->-get1(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/util/TextFormatter;

    move-result-object v4

    invoke-virtual {v4}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v27

    .line 821
    .local v27, "paramsStr":Ljava/lang/String;
    invoke-static/range {v27 .. v27}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 822
    const-string/jumbo v4, ","

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v32

    .line 823
    .local v32, "strParams":[Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v32

    array-length v5, v0

    :goto_1
    if-ge v4, v5, :cond_9

    aget-object v24, v32, v4

    .line 824
    .local v24, "pa":Ljava/lang/String;
    const-string/jumbo v6, ":"

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v25

    .line 825
    .local v25, "param":[Ljava/lang/String;
    move-object/from16 v0, v25

    array-length v6, v0

    const/4 v7, 0x2

    if-eq v6, v7, :cond_8

    .line 823
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 827
    :cond_8
    const/4 v6, 0x0

    aget-object v6, v25, v6

    const/4 v7, 0x1

    aget-object v7, v25, v7

    move-object/from16 v0, v26

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 831
    .end local v24    # "pa":Ljava/lang/String;
    .end local v25    # "param":[Ljava/lang/String;
    .end local v32    # "strParams":[Ljava/lang/String;
    :cond_9
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->-get2(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v4

    sget-object v5, Lmiui/maml/data/WebServiceBinder$ResponseProtocol;->BITMAP:Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    if-ne v4, v5, :cond_a

    .line 832
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v4}, Lmiui/maml/util/net/SimpleRequest;->getAsStream(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)Lmiui/maml/util/net/SimpleRequest$StreamContent;

    move-result-object v28

    .line 833
    .local v28, "resp":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    if-eqz v28, :cond_d

    .line 834
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    .line 835
    return-object v28

    .line 838
    .end local v28    # "resp":Lmiui/maml/util/net/SimpleRequest$StreamContent;
    :cond_a
    const/16 v29, 0x0

    .line 839
    .local v29, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$QueryThread;->-getmiui-maml-data-WebServiceBinder$RequestMethodSwitchesValues()[I

    move-result-object v4

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 857
    .end local v29    # "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :goto_3
    if-eqz v29, :cond_d

    .line 858
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0xc8

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    .line 859
    invoke-virtual/range {v29 .. v29}, Lmiui/maml/util/net/SimpleRequest$StringContent;->getBody()Ljava/lang/String;

    move-result-object v31

    .line 860
    .local v31, "result":Ljava/lang/String;
    return-object v31

    .line 841
    .end local v31    # "result":Ljava/lang/String;
    .restart local v29    # "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :pswitch_0
    if-eqz p4, :cond_b

    .line 842
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13, v5, v4}, Lmiui/maml/util/net/SecureRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v29

    .local v29, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    goto :goto_3

    .line 844
    .local v29, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :cond_b
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13, v4}, Lmiui/maml/util/net/SimpleRequest;->getAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v29

    .local v29, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    goto :goto_3

    .line 848
    .local v29, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :pswitch_1
    if-eqz p4, :cond_c

    .line 849
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v4, v4, Lmiui/maml/data/WebServiceBinder;->mSecurity:Ljava/lang/String;

    const/4 v5, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13, v5, v4}, Lmiui/maml/util/net/SecureRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;ZLjava/lang/String;)Lmiui/maml/util/net/SimpleRequest$StringContent;

    move-result-object v29

    .local v29, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    goto :goto_3

    .line 851
    .local v29, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :cond_c
    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-static {v0, v1, v13, v4}, Lmiui/maml/util/net/SimpleRequest;->postAsString(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Z)Lmiui/maml/util/net/SimpleRequest$StringContent;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lmiui/maml/util/net/CipherException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Lmiui/maml/util/net/AccessDeniedException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Lmiui/maml/util/net/InvalidResponseException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lmiui/maml/util/net/AuthenticationFailureException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-result-object v29

    .local v29, "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    goto :goto_3

    .line 883
    .end local v29    # "resp":Lmiui/maml/util/net/SimpleRequest$StringContent;
    :catch_4
    move-exception v17

    .line 884
    .restart local v17    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v17

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    .line 886
    .end local v17    # "e":Ljava/lang/Exception;
    :cond_d
    :goto_4
    const/4 v4, 0x0

    return-object v4

    .line 875
    :catch_5
    move-exception v19

    .line 876
    .local v19, "e":Lmiui/maml/util/net/AuthenticationFailureException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v19

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0x190

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    .line 878
    const-string/jumbo v4, "com.xiaomi"

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v5, v5, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x0

    iput-object v5, v4, Lmiui/maml/data/WebServiceBinder;->mServiceToken:Ljava/lang/String;

    .line 880
    if-eqz p5, :cond_d

    .line 881
    const/4 v9, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    invoke-direct/range {v4 .. v9}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZZ)Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 872
    .end local v19    # "e":Lmiui/maml/util/net/AuthenticationFailureException;
    :catch_6
    move-exception v21

    .line 873
    .local v21, "e":Lmiui/maml/util/net/InvalidResponseException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    .line 874
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x7

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_4

    .line 869
    .end local v21    # "e":Lmiui/maml/util/net/InvalidResponseException;
    :catch_7
    move-exception v18

    .line 870
    .local v18, "e":Lmiui/maml/util/net/AccessDeniedException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v18

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0x193

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_4

    .line 866
    .end local v18    # "e":Lmiui/maml/util/net/AccessDeniedException;
    :catch_8
    move-exception v20

    .line 867
    .local v20, "e":Lmiui/maml/util/net/CipherException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v20

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    .line 868
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/4 v5, 0x6

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    goto :goto_4

    .line 863
    .end local v20    # "e":Lmiui/maml/util/net/CipherException;
    :catch_9
    move-exception v16

    .line 864
    .restart local v16    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    move-object/from16 v0, v16

    invoke-static {v4, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap0(Lmiui/maml/data/WebServiceBinder;Ljava/lang/Exception;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    const/16 v5, 0x8

    invoke-static {v4, v5}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    goto/16 :goto_4

    .line 839
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    .line 723
    const-string/jumbo v3, "WebServiceBinder"

    const-string/jumbo v4, "QueryThread start"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v3, v6}, Lmiui/maml/data/WebServiceBinder;->-wrap3(Lmiui/maml/data/WebServiceBinder;I)V

    .line 725
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v3, v6}, Lmiui/maml/data/WebServiceBinder;->-wrap4(Lmiui/maml/data/WebServiceBinder;I)V

    .line 727
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v3, Lmiui/maml/data/WebServiceBinder;->mUriFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v3}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v1

    .line 728
    .local v1, "uriStr":Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string/jumbo v3, " "

    const-string/jumbo v4, ""

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 729
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 730
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v3, Lmiui/maml/data/WebServiceBinder;->mRequestMethod:Lmiui/maml/data/WebServiceBinder$RequestMethod;

    iget-object v4, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v4}, Lmiui/maml/data/WebServiceBinder;->-get0(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v4

    iget-object v5, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v5}, Lmiui/maml/data/WebServiceBinder;->-get3(Lmiui/maml/data/WebServiceBinder;)Z

    move-result v5

    invoke-direct {p0, v1, v3, v4, v5}, Lmiui/maml/data/WebServiceBinder$QueryThread;->doRequest(Ljava/lang/String;Lmiui/maml/data/WebServiceBinder$RequestMethod;ZZ)Ljava/lang/Object;

    move-result-object v0

    .line 732
    .local v0, "response":Ljava/lang/Object;
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v3, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    .line 733
    if-eqz v0, :cond_3

    instance-of v3, v0, Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 734
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v2, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    move-object v2, v0

    nop

    nop

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 740
    :cond_0
    :goto_1
    if-eqz v0, :cond_1

    .line 741
    invoke-static {}, Lmiui/maml/data/WebServiceBinder$QueryThread;->-getmiui-maml-data-WebServiceBinder$ResponseProtocolSwitchesValues()[I

    move-result-object v2

    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v3}, Lmiui/maml/data/WebServiceBinder;->-get2(Lmiui/maml/data/WebServiceBinder;)Lmiui/maml/data/WebServiceBinder$ResponseProtocol;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 757
    .end local v0    # "response":Ljava/lang/Object;
    :cond_1
    :goto_2
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-virtual {v2}, Lmiui/maml/data/VariableBinder;->onUpdateComplete()V

    .line 758
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    invoke-static {v2, v6}, Lmiui/maml/data/WebServiceBinder;->-set0(Lmiui/maml/data/WebServiceBinder;Z)Z

    .line 759
    const-string/jumbo v2, "WebServiceBinder"

    const-string/jumbo v3, "QueryThread end"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    return-void

    :cond_2
    move-object v1, v2

    .line 728
    goto :goto_0

    .line 736
    .restart local v0    # "response":Ljava/lang/Object;
    :cond_3
    iget-object v3, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    iget-object v3, v3, Lmiui/maml/data/WebServiceBinder;->mContentStringVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v3, v2}, Lmiui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    goto :goto_1

    .line 743
    :pswitch_0
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/Object;
    invoke-static {v2, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap2(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    goto :goto_2

    .line 747
    .restart local v0    # "response":Ljava/lang/Object;
    :pswitch_1
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Ljava/lang/String;

    .end local v0    # "response":Ljava/lang/Object;
    invoke-static {v2, v0}, Lmiui/maml/data/WebServiceBinder;->-wrap1(Lmiui/maml/data/WebServiceBinder;Ljava/lang/String;)V

    goto :goto_2

    .line 750
    .restart local v0    # "response":Ljava/lang/Object;
    :pswitch_2
    iget-object v2, p0, Lmiui/maml/data/WebServiceBinder$QueryThread;->this$0:Lmiui/maml/data/WebServiceBinder;

    check-cast v0, Lmiui/maml/util/net/SimpleRequest$StreamContent;

    .end local v0    # "response":Ljava/lang/Object;
    invoke-virtual {v2, v0}, Lmiui/maml/data/WebServiceBinder;->processResponseBitmap(Lmiui/maml/util/net/SimpleRequest$StreamContent;)V

    goto :goto_2

    .line 755
    :cond_4
    const-string/jumbo v2, "WebServiceBinder"

    const-string/jumbo v3, "url is null"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 741
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
