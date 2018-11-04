.class public Lmiui/provider/CallLog;
.super Ljava/lang/Object;
.source "CallLog.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CallLog"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;Z)Landroid/net/Uri;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insertUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "addForAllUsers"    # Z

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, p3, v0}, Lmiui/provider/CallLog;->addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;ZLandroid/os/UserHandle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static addCall(Landroid/content/Context;Landroid/net/Uri;Landroid/content/ContentValues;ZLandroid/os/UserHandle;)Landroid/net/Uri;
    .locals 20
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "insertUri"    # Landroid/net/Uri;
    .param p2, "values"    # Landroid/content/ContentValues;
    .param p3, "addForAllUsers"    # Z
    .param p4, "userToBeInsertedTo"    # Landroid/os/UserHandle;

    .prologue
    .line 31
    const-string/jumbo v15, "CallLog"

    const-string/jumbo v16, "addCall(): addForAllUsers=%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v17, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const/4 v6, 0x0

    .line 38
    .local v6, "result":Landroid/net/Uri;
    const-string/jumbo v15, "user"

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/os/UserManager;

    .line 39
    .local v13, "userManager":Landroid/os/UserManager;
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-virtual {v13}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 45
    :cond_0
    :goto_0
    invoke-virtual {v13}, Landroid/os/UserManager;->getUserHandle()I

    move-result v4

    .line 46
    .local v4, "currentUserId":I
    if-eqz p3, :cond_7

    .line 48
    sget-object v15, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v15, v1, v2}, Lmiui/provider/CallLog;->insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 49
    .local v9, "uriForSystem":Landroid/net/Uri;
    if-eqz v9, :cond_1

    .line 50
    const-string/jumbo v15, "call_log_shadow"

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    .line 49
    if-eqz v15, :cond_3

    .line 54
    :cond_1
    const/4 v15, 0x0

    return-object v15

    .line 40
    .end local v4    # "currentUserId":I
    .end local v9    # "uriForSystem":Landroid/net/Uri;
    :cond_2
    sget-object p1, Lmiui/provider/ExtraContacts$Calls;->SHADOW_CONTENT_URI:Landroid/net/Uri;

    goto :goto_0

    .line 56
    .restart local v4    # "currentUserId":I
    .restart local v9    # "uriForSystem":Landroid/net/Uri;
    :cond_3
    if-nez v4, :cond_4

    .line 57
    move-object v6, v9

    .line 61
    .end local v6    # "result":Landroid/net/Uri;
    :cond_4
    const/4 v15, 0x1

    invoke-virtual {v13, v15}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v14

    .line 62
    .local v14, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    .line 63
    .local v3, "count":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v3, :cond_8

    .line 64
    invoke-interface {v14, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserInfo;

    .line 65
    .local v12, "userInfo":Landroid/content/pm/UserInfo;
    invoke-virtual {v12}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v10

    .line 66
    .local v10, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {v10}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    .line 67
    .local v11, "userId":I
    invoke-virtual {v10}, Landroid/os/UserHandle;->isSystem()Z

    move-result v15

    if-eqz v15, :cond_6

    .line 63
    :cond_5
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 72
    :cond_6
    invoke-static {v13, v12}, Lmiui/provider/CallLog;->canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z

    move-result v15

    if-eqz v15, :cond_5

    .line 77
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v10, v1, v2}, Lmiui/provider/CallLog;->insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v8

    .line 78
    .local v8, "uri":Landroid/net/Uri;
    if-ne v11, v4, :cond_5

    .line 79
    move-object v6, v8

    .local v6, "result":Landroid/net/Uri;
    goto :goto_2

    .line 83
    .end local v3    # "count":I
    .end local v5    # "i":I
    .end local v8    # "uri":Landroid/net/Uri;
    .end local v9    # "uriForSystem":Landroid/net/Uri;
    .end local v10    # "userHandle":Landroid/os/UserHandle;
    .end local v11    # "userId":I
    .end local v12    # "userInfo":Landroid/content/pm/UserInfo;
    .end local v14    # "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .local v6, "result":Landroid/net/Uri;
    :cond_7
    if-eqz p4, :cond_9

    move-object/from16 v7, p4

    .line 86
    .local v7, "targetUserHandle":Landroid/os/UserHandle;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v7, v1, v2}, Lmiui/provider/CallLog;->insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v6

    .line 89
    .end local v6    # "result":Landroid/net/Uri;
    .end local v7    # "targetUserHandle":Landroid/os/UserHandle;
    :cond_8
    const-string/jumbo v15, "CallLog"

    const-string/jumbo v16, "addCall(): result=%s"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return-object v6

    .line 85
    .restart local v6    # "result":Landroid/net/Uri;
    :cond_9
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    goto :goto_3
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 28
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J
    .param p16, "addForAllUsers"    # Z
    .param p17, "userToBeInsertedTo"    # Landroid/os/UserHandle;
    .param p18, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 124
    const/16 v26, 0x0

    .line 126
    .local v26, "tm":Landroid/telecom/TelecomManager;
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v26

    .line 130
    .end local v26    # "tm":Landroid/telecom/TelecomManager;
    :goto_0
    const/16 v22, 0x0

    .line 131
    .local v22, "accountAddress":Ljava/lang/String;
    if-eqz v26, :cond_0

    if-eqz p18, :cond_0

    .line 132
    move-object/from16 v0, v26

    move-object/from16 v1, p18

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v23

    .line 133
    .local v23, "account":Landroid/telecom/PhoneAccount;
    if-eqz v23, :cond_0

    .line 134
    invoke-virtual/range {v23 .. v23}, Landroid/telecom/PhoneAccount;->getSubscriptionAddress()Landroid/net/Uri;

    move-result-object v24

    .line 135
    .local v24, "address":Landroid/net/Uri;
    if-eqz v24, :cond_0

    .line 136
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v22

    .line 142
    .end local v22    # "accountAddress":Ljava/lang/String;
    .end local v23    # "account":Landroid/telecom/PhoneAccount;
    .end local v24    # "address":Landroid/net/Uri;
    :cond_0
    const/16 v20, 0x0

    .line 143
    .local v20, "accountComponentString":Ljava/lang/String;
    const/16 v21, 0x0

    .line 144
    .local v21, "accountId":Ljava/lang/String;
    if-eqz p18, :cond_1

    .line 145
    invoke-virtual/range {p18 .. p18}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v20

    .line 146
    .local v20, "accountComponentString":Ljava/lang/String;
    invoke-virtual/range {p18 .. p18}, Landroid/telecom/PhoneAccountHandle;->getId()Ljava/lang/String;

    move-result-object v21

    .end local v20    # "accountComponentString":Ljava/lang/String;
    .end local v21    # "accountId":Ljava/lang/String;
    :cond_1
    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move-wide/from16 v7, p5

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    move-wide/from16 v12, p10

    move-wide/from16 v14, p12

    move-wide/from16 v16, p14

    move/from16 v18, p16

    move-object/from16 v19, p17

    .line 148
    invoke-static/range {v2 .. v22}, Lmiui/provider/ExtraContacts$Calls;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    return-object v2

    .line 127
    .restart local v26    # "tm":Landroid/telecom/TelecomManager;
    :catch_0
    move-exception v25

    .local v25, "e":Ljava/lang/UnsupportedOperationException;
    goto :goto_0
.end method

.method public static addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .locals 20
    .param p0, "ci"    # Lcom/android/internal/telephony/CallerInfo;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "presentation"    # I
    .param p4, "callType"    # I
    .param p5, "start"    # J
    .param p7, "duration"    # I
    .param p8, "firewallType"    # I
    .param p9, "forwardedCall"    # I
    .param p10, "simInfoId"    # J
    .param p12, "phoneCallType"    # J
    .param p14, "feature"    # J
    .param p16, "addForAllUsers"    # Z
    .param p17, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .prologue
    .line 114
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-wide/from16 v10, p10

    move-wide/from16 v12, p12

    move-wide/from16 v14, p14

    move/from16 v16, p16

    move-object/from16 v18, p17

    .line 113
    invoke-static/range {v0 .. v18}, Lmiui/provider/CallLog;->addCall(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;Ljava/lang/String;IIJIIIJJJZLandroid/os/UserHandle;Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method private static canInsertCalllog(Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Z
    .locals 7
    .param p0, "userManager"    # Landroid/os/UserManager;
    .param p1, "user"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "canInsert":Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 156
    .local v1, "userHandle":Landroid/os/UserHandle;
    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    const/16 v3, 0x3e7

    if-eq v3, v2, :cond_0

    .line 157
    invoke-virtual {p0, v1}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v2

    .line 156
    if-eqz v2, :cond_0

    .line 158
    const-string/jumbo v2, "no_outgoing_calls"

    invoke-virtual {p0, v2, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 156
    :cond_0
    const/4 v0, 0x0

    .line 161
    .end local v1    # "userHandle":Landroid/os/UserHandle;
    :cond_1
    :goto_0
    const-string/jumbo v2, "CallLog"

    const-string/jumbo v3, "canInsertCallLog(): user=%s, canInsert=%s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    return v0

    .line 159
    .restart local v1    # "userHandle":Landroid/os/UserHandle;
    :cond_2
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static insertCall(Landroid/content/Context;Landroid/os/UserHandle;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "insertUri"    # Landroid/net/Uri;
    .param p3, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 94
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {p2, v2}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v1

    .line 96
    .local v1, "uri":Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v1, p3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "CallLog"

    const-string/jumbo v3, "Failed to insert calllog"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 102
    const/4 v2, 0x0

    return-object v2
.end method
