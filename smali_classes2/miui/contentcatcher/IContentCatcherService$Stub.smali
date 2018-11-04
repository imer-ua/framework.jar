.class public abstract Lmiui/contentcatcher/IContentCatcherService$Stub;
.super Landroid/os/Binder;
.source "IContentCatcherService.java"

# interfaces
.implements Lmiui/contentcatcher/IContentCatcherService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/contentcatcher/IContentCatcherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "miui.contentcatcher.IContentCatcherService"

.field static final TRANSACTION_decorateContent:I = 0x7

.field static final TRANSACTION_getPageConfig:I = 0x1

.field static final TRANSACTION_onContentCatched:I = 0x4

.field static final TRANSACTION_registerContentInjector:I = 0x2

.field static final TRANSACTION_registerContentListener:I = 0x5

.field static final TRANSACTION_unregisterContentInjector:I = 0x3

.field static final TRANSACTION_unregisterContentListener:I = 0x6

.field static final TRANSACTION_updateClientConfig:I = 0x9

.field static final TRANSACTION_updateConfig:I = 0x8

.field static final TRANSACTION_updateJobValidity:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "miui.contentcatcher.IContentCatcherService"

    invoke-virtual {p0, p0, v0}, Landroid/os/Binder;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/IContentCatcherService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "miui.contentcatcher.IContentCatcherService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lmiui/contentcatcher/IContentCatcherService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Lmiui/contentcatcher/IContentCatcherService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;

    invoke-direct {v1, p0}, Lmiui/contentcatcher/IContentCatcherService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 208
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v13

    return v13

    .line 46
    :sswitch_0
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v13, 0x1

    return v13

    .line 51
    :sswitch_1
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_0

    .line 54
    sget-object v13, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/contentcatcher/sdk/Token;

    .line 59
    :goto_0
    invoke-virtual {p0, v4}, Lmiui/contentcatcher/IContentCatcherService$Stub;->getPageConfig(Lmiui/contentcatcher/sdk/Token;)Lmiui/contentcatcher/sdk/data/PageConfig;

    move-result-object v12

    .line 60
    .local v12, "_result":Lmiui/contentcatcher/sdk/data/PageConfig;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v12, :cond_1

    .line 62
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v13, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v12, v0, v13}, Lmiui/contentcatcher/sdk/data/PageConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_1
    const/4 v13, 0x1

    return v13

    .line 57
    .end local v12    # "_result":Lmiui/contentcatcher/sdk/data/PageConfig;
    :cond_0
    const/4 v4, 0x0

    .local v4, "_arg0":Lmiui/contentcatcher/sdk/Token;
    goto :goto_0

    .line 66
    .end local v4    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    .restart local v12    # "_result":Lmiui/contentcatcher/sdk/data/PageConfig;
    :cond_1
    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 72
    .end local v12    # "_result":Lmiui/contentcatcher/sdk/data/PageConfig;
    :sswitch_2
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_2

    .line 75
    sget-object v13, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/contentcatcher/sdk/Token;

    .line 81
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;

    move-result-object v8

    .line 82
    .local v8, "_arg1":Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;
    invoke-virtual {p0, v4, v8}, Lmiui/contentcatcher/IContentCatcherService$Stub;->registerContentInjector(Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;)V

    .line 83
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    const/4 v13, 0x1

    return v13

    .line 78
    .end local v8    # "_arg1":Lmiui/contentcatcher/sdk/injector/IContentDecorateCallback;
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    goto :goto_2

    .line 88
    .end local v4    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    :sswitch_3
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_3

    .line 91
    sget-object v13, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmiui/contentcatcher/sdk/Token;

    .line 96
    :goto_3
    invoke-virtual {p0, v4}, Lmiui/contentcatcher/IContentCatcherService$Stub;->unregisterContentInjector(Lmiui/contentcatcher/sdk/Token;)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v13, 0x1

    return v13

    .line 94
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    goto :goto_3

    .line 102
    .end local v4    # "_arg0":Lmiui/contentcatcher/sdk/Token;
    :sswitch_4
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_4

    .line 105
    sget-object v13, Lmiui/contentcatcher/sdk/Content;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/contentcatcher/sdk/Content;

    .line 110
    :goto_4
    invoke-virtual {p0, v3}, Lmiui/contentcatcher/IContentCatcherService$Stub;->onContentCatched(Lmiui/contentcatcher/sdk/Content;)V

    .line 111
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    const/4 v13, 0x1

    return v13

    .line 108
    :cond_4
    const/4 v3, 0x0

    .local v3, "_arg0":Lmiui/contentcatcher/sdk/Content;
    goto :goto_4

    .line 116
    .end local v3    # "_arg0":Lmiui/contentcatcher/sdk/Content;
    :sswitch_5
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_5

    .line 119
    sget-object v13, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/ClientToken;

    .line 125
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v13

    invoke-static {v13}, Lmiui/contentcatcher/sdk/listener/IContentListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;

    move-result-object v9

    .line 126
    .local v9, "_arg1":Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
    invoke-virtual {p0, v2, v9}, Lmiui/contentcatcher/IContentCatcherService$Stub;->registerContentListener(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;)V

    .line 127
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    const/4 v13, 0x1

    return v13

    .line 122
    .end local v9    # "_arg1":Lmiui/contentcatcher/sdk/listener/IContentListenerCallback;
    :cond_5
    const/4 v2, 0x0

    .local v2, "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    goto :goto_5

    .line 132
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    :sswitch_6
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_6

    .line 135
    sget-object v13, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/ClientToken;

    .line 140
    :goto_6
    invoke-virtual {p0, v2}, Lmiui/contentcatcher/IContentCatcherService$Stub;->unregisterContentListener(Lmiui/contentcatcher/sdk/ClientToken;)V

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    const/4 v13, 0x1

    return v13

    .line 138
    :cond_6
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    goto :goto_6

    .line 146
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    :sswitch_7
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_7

    .line 149
    sget-object v13, Lmiui/contentcatcher/sdk/ClientToken;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/contentcatcher/sdk/ClientToken;

    .line 155
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_8

    .line 156
    sget-object v13, Lmiui/contentcatcher/sdk/Token;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lmiui/contentcatcher/sdk/Token;

    .line 162
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_9

    .line 163
    sget-object v13, Lmiui/contentcatcher/sdk/DecorateContentParam;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v13, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lmiui/contentcatcher/sdk/DecorateContentParam;

    .line 168
    :goto_9
    invoke-virtual {p0, v2, v7, v10}, Lmiui/contentcatcher/IContentCatcherService$Stub;->decorateContent(Lmiui/contentcatcher/sdk/ClientToken;Lmiui/contentcatcher/sdk/Token;Lmiui/contentcatcher/sdk/DecorateContentParam;)V

    .line 169
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    const/4 v13, 0x1

    return v13

    .line 152
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    goto :goto_7

    .line 159
    .end local v2    # "_arg0":Lmiui/contentcatcher/sdk/ClientToken;
    :cond_8
    const/4 v7, 0x0

    .local v7, "_arg1":Lmiui/contentcatcher/sdk/Token;
    goto :goto_8

    .line 166
    .end local v7    # "_arg1":Lmiui/contentcatcher/sdk/Token;
    :cond_9
    const/4 v10, 0x0

    .local v10, "_arg2":Lmiui/contentcatcher/sdk/DecorateContentParam;
    goto :goto_9

    .line 174
    .end local v10    # "_arg2":Lmiui/contentcatcher/sdk/DecorateContentParam;
    :sswitch_8
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v5

    .line 177
    .local v5, "_arg0":[Ljava/lang/String;
    invoke-virtual {p0, v5}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateConfig([Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    const/4 v13, 0x1

    return v13

    .line 183
    .end local v5    # "_arg0":[Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 187
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 189
    .local v6, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_a

    const/4 v11, 0x1

    .line 190
    .local v11, "_arg2":Z
    :goto_a
    invoke-virtual {p0, v1, v6, v11}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateClientConfig(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 191
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    const/4 v13, 0x1

    return v13

    .line 189
    .end local v11    # "_arg2":Z
    :cond_a
    const/4 v11, 0x0

    goto :goto_a

    .line 196
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v6    # "_arg1":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v13, "miui.contentcatcher.IContentCatcherService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 200
    .restart local v1    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 202
    .restart local v6    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v13

    if-eqz v13, :cond_b

    const/4 v11, 0x1

    .line 203
    .restart local v11    # "_arg2":Z
    :goto_b
    invoke-virtual {p0, v1, v6, v11}, Lmiui/contentcatcher/IContentCatcherService$Stub;->updateJobValidity(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v13, 0x1

    return v13

    .line 202
    .end local v11    # "_arg2":Z
    :cond_b
    const/4 v11, 0x0

    goto :goto_b

    .line 42
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
