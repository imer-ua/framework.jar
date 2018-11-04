.class public abstract Landroid/telecom/ConnectionService;
.super Landroid/app/Service;
.source "ConnectionService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/ConnectionService$1;,
        Landroid/telecom/ConnectionService$2;,
        Landroid/telecom/ConnectionService$3;,
        Landroid/telecom/ConnectionService$4;
    }
.end annotation


# static fields
.field private static final MSG_ABORT:I = 0x3

.field private static final MSG_ADD_CONNECTION_SERVICE_ADAPTER:I = 0x1

.field private static final MSG_ADD_PARTICIPANT_WITH_CONFERENCE:I = 0x1e

.field private static final MSG_ANSWER:I = 0x4

.field private static final MSG_ANSWER_VIDEO:I = 0x11

.field private static final MSG_CONFERENCE:I = 0xc

.field private static final MSG_CREATE_CONNECTION:I = 0x2

.field private static final MSG_DISCONNECT:I = 0x6

.field private static final MSG_HOLD:I = 0x7

.field private static final MSG_MERGE_CONFERENCE:I = 0x12

.field private static final MSG_ON_CALL_AUDIO_STATE_CHANGED:I = 0x9

.field private static final MSG_ON_EXTRAS_CHANGED:I = 0x18

.field private static final MSG_ON_POST_DIAL_CONTINUE:I = 0xe

.field private static final MSG_PLAY_DTMF_TONE:I = 0xa

.field private static final MSG_PULL_EXTERNAL_CALL:I = 0x16

.field private static final MSG_REJECT:I = 0x5

.field private static final MSG_REJECT_WITH_MESSAGE:I = 0x14

.field private static final MSG_REMOVE_CONNECTION_SERVICE_ADAPTER:I = 0x10

.field private static final MSG_SEND_CALL_EVENT:I = 0x17

.field private static final MSG_SILENCE:I = 0x15

.field private static final MSG_SPLIT_FROM_CONFERENCE:I = 0xd

.field private static final MSG_STOP_DTMF_TONE:I = 0xb

.field private static final MSG_SWAP_CONFERENCE:I = 0x13

.field private static final MSG_UNHOLD:I = 0x8

.field private static final PII_DEBUG:Z

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telecom.ConnectionService"

.field private static sNullConnection:Landroid/telecom/Connection;


# instance fields
.field private final mAdapter:Landroid/telecom/ConnectionServiceAdapter;

.field private mAreAccountsInitialized:Z

.field private final mBinder:Landroid/os/IBinder;

.field private final mConferenceById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation
.end field

.field private final mConferenceListener:Landroid/telecom/Conference$Listener;

.field private final mConnectionById:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation
.end field

.field private final mConnectionListener:Landroid/telecom/Connection$Listener;

.field private final mHandler:Landroid/os/Handler;

.field private mId:I

.field private final mIdByConference:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Conference;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mIdByConnection:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/telecom/Connection;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIdSyncRoot:Ljava/lang/Object;

.field private final mPreInitializationConnectionRequests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field protected mPrevPhoneConnection:Landroid/telecom/Connection;

.field private final mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

.field private sNullConference:Landroid/telecom/Conference;


# direct methods
.method static synthetic -get0(Landroid/telecom/ConnectionService;)Landroid/telecom/ConnectionServiceAdapter;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    return-object v0
.end method

.method static synthetic -get1(Landroid/telecom/ConnectionService;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return v0
.end method

.method static synthetic -get2(Landroid/telecom/ConnectionService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get4(Landroid/telecom/ConnectionService;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get5(Landroid/telecom/ConnectionService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Landroid/telecom/ConnectionService;)Landroid/telecom/RemoteConnectionManager;
    .locals 1

    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    return-object v0
.end method

.method static synthetic -set0(Landroid/telecom/ConnectionService;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "connections"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createConnectionIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Landroid/telecom/ConnectionService;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "conferenceables"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap10(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->hold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap11(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->mergeConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap12(Landroid/telecom/ConnectionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAccountsInitialized()V

    return-void
.end method

.method static synthetic -wrap13(Landroid/telecom/ConnectionService;)V
    .locals 0

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->onAdapterAttached()V

    return-void
.end method

.method static synthetic -wrap14(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V

    return-void
.end method

.method static synthetic -wrap15(Landroid/telecom/ConnectionService;Ljava/lang/String;Z)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->onPostDialContinue(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap16(Landroid/telecom/ConnectionService;Ljava/lang/String;C)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->playDtmfTone(Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic -wrap17(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->pullExternalCall(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap18(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap19(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->reject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap2(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->abort(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap20(Landroid/telecom/ConnectionService;Landroid/telecom/Conference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->removeConference(Landroid/telecom/Conference;)V

    return-void
.end method

.method static synthetic -wrap21(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/telecom/ConnectionService;->sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic -wrap22(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->silence(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap23(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->splitFromConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap24(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->stopDtmfTone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap25(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->swapConference(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap26(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->unhold(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "participant"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap4(Landroid/telecom/ConnectionService;Ljava/lang/String;I)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->answerVideo(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap5(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->answer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Landroid/telecom/ConnectionService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->conference(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap7(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 0
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/telecom/ConnectionService;->createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V

    return-void
.end method

.method static synthetic -wrap8(Landroid/telecom/ConnectionService;Ljava/lang/String;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Landroid/telecom/ConnectionService;->disconnect(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap9(Landroid/telecom/ConnectionService;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/telecom/ConnectionService;->handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/telecom/Log;->isLoggable(I)Z

    move-result v0

    sput-boolean v0, Landroid/telecom/ConnectionService;->PII_DEBUG:Z

    .line 76
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 114
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    .line 115
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    .line 116
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    .line 117
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    .line 119
    new-instance v0, Landroid/telecom/RemoteConnectionManager;

    invoke-direct {v0, p0}, Landroid/telecom/RemoteConnectionManager;-><init>(Landroid/telecom/ConnectionService;)V

    .line 118
    iput-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    .line 121
    new-instance v0, Landroid/telecom/ConnectionServiceAdapter;

    invoke-direct {v0}, Landroid/telecom/ConnectionServiceAdapter;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    .line 123
    iput-boolean v1, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 125
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    .line 126
    iput v1, p0, Landroid/telecom/ConnectionService;->mId:I

    .line 128
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mPrevPhoneConnection:Landroid/telecom/Connection;

    .line 130
    new-instance v0, Landroid/telecom/ConnectionService$1;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$1;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    .line 287
    new-instance v0, Landroid/telecom/ConnectionService$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$2;-><init>(Landroid/telecom/ConnectionService;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mHandler:Landroid/os/Handler;

    .line 466
    new-instance v0, Landroid/telecom/ConnectionService$3;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$3;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    .line 570
    new-instance v0, Landroid/telecom/ConnectionService$4;

    invoke-direct {v0, p0}, Landroid/telecom/ConnectionService$4;-><init>(Landroid/telecom/ConnectionService;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    .line 76
    return-void
.end method

.method private abort(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 827
    const-string/jumbo v0, "abort %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    const-string/jumbo v0, "abort"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAbort()V

    .line 826
    return-void
.end method

.method private addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;
    .locals 8
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 1443
    const/4 v1, 0x0

    .line 1444
    .local v1, "originalId":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 1445
    const-string/jumbo v3, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    .line 1444
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1446
    invoke-virtual {p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1447
    .local v1, "originalId":Ljava/lang/String;
    const-string/jumbo v2, "addConferenceInternal: conf %s reusing original id %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 1448
    invoke-virtual {p1}, Landroid/telecom/Conference;->getTelecomCallId()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    .line 1449
    aput-object v1, v3, v7

    .line 1447
    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1451
    .end local v1    # "originalId":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1452
    const-string/jumbo v2, "Re-adding an existing conference: %s."

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1464
    :cond_1
    return-object v5

    .line 1453
    :cond_2
    if-eqz p1, :cond_1

    .line 1457
    if-nez v1, :cond_3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1458
    .local v0, "id":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1460
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v2}, Landroid/telecom/Conference;->addListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1461
    return-object v0

    .line 1457
    .end local v0    # "id":Ljava/lang/String;
    :cond_3
    move-object v0, v1

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0
.end method

.method private addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V
    .locals 1
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1423
    invoke-virtual {p2, p1}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 1424
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1425
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1426
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p2, v0}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1427
    invoke-virtual {p2, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1422
    return-void
.end method

.method private addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;
    .locals 5
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1404
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1405
    const-string/jumbo v2, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    .line 1404
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1406
    invoke-virtual {p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "android.telecom.extra.ORIGINAL_CONNECTION_ID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1407
    .local v0, "id":Ljava/lang/String;
    const-string/jumbo v1, "addExistingConnectionInternal - conn %s reusing original id %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 1408
    invoke-virtual {p2}, Landroid/telecom/Connection;->getTelecomCallId()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object v0, v2, v3

    .line 1407
    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1418
    :goto_0
    invoke-direct {p0, v0, p2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 1419
    return-object v0

    .line 1409
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    if-nez p1, :cond_1

    .line 1412
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0

    .line 1416
    .end local v0    # "id":Ljava/lang/String;
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNextCallId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "id":Ljava/lang/String;
    goto :goto_0
.end method

.method private addParticipantWithConference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "participant"    # Ljava/lang/String;

    .prologue
    .line 975
    const-string/jumbo v2, "ConnectionService addParticipantWithConference(%s, %s)"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v4, 0x1

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 976
    const-string/jumbo v2, "addParticipantWithConference"

    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 977
    .local v0, "conference":Landroid/telecom/Conference;
    const-string/jumbo v2, "addParticipantWithConnection"

    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 978
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-eq v1, v2, :cond_1

    .line 979
    invoke-virtual {p0, v1, p2}, Landroid/telecom/ConnectionService;->onAddParticipant(Landroid/telecom/Connection;Ljava/lang/String;)V

    .line 974
    :cond_0
    :goto_0
    return-void

    .line 980
    :cond_1
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v2

    if-eq v0, v2, :cond_0

    .line 981
    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onAddParticipant(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private answer(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 837
    const-string/jumbo v0, "answer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 838
    const-string/jumbo v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onAnswer()V

    .line 836
    return-void
.end method

.method private answerVideo(Ljava/lang/String;I)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "videoState"    # I

    .prologue
    .line 832
    const-string/jumbo v0, "answerVideo %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    const-string/jumbo v0, "answer"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onAnswer(I)V

    .line 831
    return-void
.end method

.method private conference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "callId1"    # Ljava/lang/String;
    .param p2, "callId2"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 913
    const-string/jumbo v4, "conference %s, %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v6

    aput-object p2, v5, v7

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 916
    const-string/jumbo v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v3

    .line 917
    .local v3, "connection2":Landroid/telecom/Connection;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v1

    .line 918
    .local v1, "conference2":Landroid/telecom/Conference;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 919
    const-string/jumbo v4, "conference"

    invoke-direct {p0, p2, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v1

    .line 920
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v1, v4, :cond_0

    .line 921
    const-string/jumbo v4, "Connection2 or Conference2 missing in conference request %s."

    new-array v5, v7, [Ljava/lang/Object;

    .line 922
    aput-object p2, v5, v6

    .line 921
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 923
    return-void

    .line 928
    :cond_0
    const-string/jumbo v4, "conference"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v2

    .line 929
    .local v2, "connection1":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-ne v2, v4, :cond_3

    .line 930
    const-string/jumbo v4, "addConnection"

    invoke-direct {p0, p1, v4}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 931
    .local v0, "conference1":Landroid/telecom/Conference;
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-ne v0, v4, :cond_1

    .line 933
    const-string/jumbo v4, "Connection1 or Conference1 missing in conference request %s."

    .line 932
    new-array v5, v7, [Ljava/lang/Object;

    .line 934
    aput-object p1, v5, v6

    .line 932
    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 912
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :goto_0
    return-void

    .line 937
    .restart local v0    # "conference1":Landroid/telecom/Conference;
    :cond_1
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 939
    invoke-virtual {v0, v3}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 942
    :cond_2
    const-string/jumbo v4, "There can only be one conference and an attempt was made to merge two conferences."

    new-array v5, v6, [Ljava/lang/Object;

    invoke-static {p0, v4, v5}, Landroid/telecom/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 944
    return-void

    .line 949
    .end local v0    # "conference1":Landroid/telecom/Conference;
    :cond_3
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v4

    if-eq v1, v4, :cond_4

    .line 951
    invoke-virtual {v1, v2}, Landroid/telecom/Conference;->onMerge(Landroid/telecom/Connection;)V

    goto :goto_0

    .line 954
    :cond_4
    invoke-virtual {p0, v2, v3}, Landroid/telecom/ConnectionService;->onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V

    goto :goto_0
.end method

.method private createConnection(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Landroid/telecom/ConnectionRequest;ZZ)V
    .locals 28
    .param p1, "callManagerAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "callId"    # Ljava/lang/String;
    .param p3, "request"    # Landroid/telecom/ConnectionRequest;
    .param p4, "isIncoming"    # Z
    .param p5, "isUnknown"    # Z

    .prologue
    .line 766
    const-string/jumbo v4, "createConnection, callManagerAccount: %s, callId: %s, request: %s, isIncoming: %b, isUnknown: %b"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Object;

    .line 767
    const/4 v6, 0x0

    aput-object p1, v5, v6

    const/4 v6, 0x1

    aput-object p2, v5, v6

    const/4 v6, 0x2

    aput-object p3, v5, v6

    .line 768
    invoke-static/range {p4 .. p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 769
    invoke-static/range {p5 .. p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const/4 v7, 0x4

    aput-object v6, v5, v7

    .line 766
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 771
    if-eqz p5, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v25

    .line 774
    .local v25, "connection":Landroid/telecom/Connection;
    :goto_0
    const-string/jumbo v4, "createConnection, connection: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v25, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 775
    if-nez v25, :cond_0

    .line 777
    new-instance v4, Landroid/telecom/DisconnectCause;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/telecom/DisconnectCause;-><init>(I)V

    .line 776
    invoke-static {v4}, Landroid/telecom/Connection;->createFailedConnection(Landroid/telecom/DisconnectCause;)Landroid/telecom/Connection;

    move-result-object v25

    .line 780
    :cond_0
    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Landroid/telecom/Connection;->setTelecomCallId(Ljava/lang/String;)V

    .line 781
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mPrevPhoneConnection:Landroid/telecom/Connection;

    if-eqz v4, :cond_3

    .line 782
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Landroid/telecom/ConnectionService;->mPrevPhoneConnection:Landroid/telecom/Connection;

    .line 783
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 784
    return-void

    .line 772
    .end local v25    # "connection":Landroid/telecom/Connection;
    :cond_1
    if-eqz p4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v25

    .restart local v25    # "connection":Landroid/telecom/Connection;
    goto :goto_0

    .line 773
    .end local v25    # "connection":Landroid/telecom/Connection;
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/telecom/ConnectionService;->onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;

    move-result-object v25

    .restart local v25    # "connection":Landroid/telecom/Connection;
    goto :goto_0

    .line 785
    :cond_3
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_4

    .line 786
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/telecom/ConnectionService;->addConnection(Ljava/lang/String;Landroid/telecom/Connection;)V

    .line 789
    :cond_4
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v24

    .line 790
    .local v24, "address":Landroid/net/Uri;
    if-nez v24, :cond_6

    const-string/jumbo v26, "null"

    .line 791
    .local v26, "number":Ljava/lang/String;
    :goto_1
    const-string/jumbo v4, "createConnection, number: %s, state: %s, capabilities: %s, properties: %s"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    .line 792
    invoke-static/range {v26 .. v26}, Landroid/telecom/Connection;->toLogSafePhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    .line 793
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getState()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/Connection;->stateToString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v5, v7

    .line 794
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/Connection;->capabilitiesToString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v5, v7

    .line 795
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v6

    invoke-static {v6}, Landroid/telecom/Connection;->propertiesToString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    aput-object v6, v5, v7

    .line 791
    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->v(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 797
    const-string/jumbo v4, "createConnection, calling handleCreateConnectionSuccessful %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    move-object/from16 v0, p0

    invoke-static {v0, v4, v5}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v27, v0

    .line 801
    new-instance v4, Landroid/telecom/ParcelableConnection;

    .line 802
    invoke-virtual/range {p3 .. p3}, Landroid/telecom/ConnectionRequest;->getAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 803
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getState()I

    move-result v6

    .line 804
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v7

    .line 805
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v8

    .line 806
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v9

    .line 807
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v10

    .line 808
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v11

    .line 809
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v12

    .line 810
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v13

    .line 811
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v14

    if-nez v14, :cond_7

    .line 812
    const/4 v14, 0x0

    .line 813
    :goto_2
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getVideoState()I

    move-result v15

    .line 814
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v16

    .line 815
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v17

    .line 816
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v18

    .line 817
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v20

    .line 818
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v21

    .line 819
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getConferenceables()Ljava/util/List;

    move-result-object v22

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Landroid/telecom/ConnectionService;->createIdList(Ljava/util/List;)Ljava/util/List;

    move-result-object v22

    .line 820
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v23

    .line 801
    invoke-direct/range {v4 .. v23}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 798
    move-object/from16 v0, v27

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v0, v1, v2, v4}, Landroid/telecom/ConnectionServiceAdapter;->handleCreateConnectionComplete(Ljava/lang/String;Landroid/telecom/ConnectionRequest;Landroid/telecom/ParcelableConnection;)V

    .line 821
    if-eqz p5, :cond_5

    .line 822
    invoke-virtual/range {p0 .. p0}, Landroid/telecom/ConnectionService;->triggerConferenceRecalculate()V

    .line 765
    :cond_5
    return-void

    .line 790
    .end local v26    # "number":Ljava/lang/String;
    :cond_6
    invoke-virtual/range {v24 .. v24}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .restart local v26    # "number":Ljava/lang/String;
    goto/16 :goto_1

    .line 812
    :cond_7
    invoke-virtual/range {v25 .. v25}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v14

    invoke-virtual {v14}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v14

    goto :goto_2
.end method

.method private createConnectionIdList(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Connection;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1502
    .local p1, "connections":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Connection;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1503
    .local v2, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    .line 1504
    .local v0, "c":Landroid/telecom/Connection;
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1505
    iget-object v3, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1508
    .end local v0    # "c":Landroid/telecom/Connection;
    :cond_1
    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1509
    return-object v2
.end method

.method private createIdList(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/Conferenceable;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1520
    .local p1, "conferenceables":Ljava/util/List;, "Ljava/util/List<Landroid/telecom/Conferenceable;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1521
    .local v4, "ids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conferenceable;

    .line 1523
    .local v0, "c":Landroid/telecom/Conferenceable;
    instance-of v5, v0, Landroid/telecom/Connection;

    if-eqz v5, :cond_1

    move-object v3, v0

    .line 1524
    check-cast v3, Landroid/telecom/Connection;

    .line 1525
    .local v3, "connection":Landroid/telecom/Connection;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1526
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1528
    .end local v3    # "connection":Landroid/telecom/Connection;
    :cond_1
    instance-of v5, v0, Landroid/telecom/Conference;

    if-eqz v5, :cond_0

    move-object v2, v0

    .line 1529
    check-cast v2, Landroid/telecom/Conference;

    .line 1530
    .local v2, "conference":Landroid/telecom/Conference;
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1531
    iget-object v5, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1535
    .end local v0    # "c":Landroid/telecom/Conferenceable;
    .end local v2    # "conference":Landroid/telecom/Conference;
    :cond_2
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1536
    return-object v4
.end method

.method private disconnect(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 857
    const-string/jumbo v0, "disconnect %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 858
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 859
    const-string/jumbo v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onDisconnect()V

    .line 856
    :goto_0
    return-void

    .line 861
    :cond_0
    const-string/jumbo v0, "disconnect"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_0
.end method

.method private endAllConnections()V
    .locals 5

    .prologue
    .line 1548
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/Connection;

    .line 1550
    .local v2, "connection":Landroid/telecom/Connection;
    invoke-virtual {v2}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1551
    invoke-virtual {v2}, Landroid/telecom/Connection;->onDisconnect()V

    goto :goto_0

    .line 1554
    .end local v2    # "connection":Landroid/telecom/Connection;
    :cond_1
    iget-object v4, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "conference$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    .line 1555
    .local v0, "conference":Landroid/telecom/Conference;
    invoke-virtual {v0}, Landroid/telecom/Conference;->onDisconnect()V

    goto :goto_1

    .line 1546
    .end local v0    # "conference":Landroid/telecom/Conference;
    :cond_2
    return-void
.end method

.method private findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;
    .locals 3
    .param p1, "conferenceId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1494
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1495
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Conference;

    return-object v0

    .line 1497
    :cond_0
    const-string/jumbo v0, "%s - Cannot find conference %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1498
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->getNullConference()Landroid/telecom/Conference;

    move-result-object v0

    return-object v0
.end method

.method private findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "action"    # Ljava/lang/String;

    .prologue
    .line 1479
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1480
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/Connection;

    return-object v0

    .line 1482
    :cond_0
    const-string/jumbo v0, "%s - Cannot find Connection %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1483
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v0

    return-object v0
.end method

.method private getNextCallId()I
    .locals 2

    .prologue
    .line 1565
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdSyncRoot:Ljava/lang/Object;

    monitor-enter v1

    .line 1566
    :try_start_0
    iget v0, p0, Landroid/telecom/ConnectionService;->mId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/telecom/ConnectionService;->mId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return v0

    .line 1565
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getNullConference()Landroid/telecom/Conference;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1540
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    if-nez v0, :cond_0

    .line 1541
    new-instance v0, Landroid/telecom/ConnectionService$7;

    invoke-direct {v0, p0, v1}, Landroid/telecom/ConnectionService$7;-><init>(Landroid/telecom/ConnectionService;Landroid/telecom/PhoneAccountHandle;)V

    iput-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    .line 1543
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->sNullConference:Landroid/telecom/Conference;

    return-object v0
.end method

.method static declared-synchronized getNullConnection()Landroid/telecom/Connection;
    .locals 2

    .prologue
    const-class v1, Landroid/telecom/ConnectionService;

    monitor-enter v1

    .line 1487
    :try_start_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    if-nez v0, :cond_0

    .line 1488
    new-instance v0, Landroid/telecom/ConnectionService$6;

    invoke-direct {v0}, Landroid/telecom/ConnectionService$6;-><init>()V

    sput-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;

    .line 1490
    :cond_0
    sget-object v0, Landroid/telecom/ConnectionService;->sNullConnection:Landroid/telecom/Connection;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private handleExtrasChanged(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1047
    const-string/jumbo v0, "handleExtrasChanged(%s, %s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1048
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1049
    const-string/jumbo v0, "handleExtrasChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->handleExtrasChanged(Landroid/os/Bundle;)V

    .line 1046
    :cond_0
    :goto_0
    return-void

    .line 1050
    :cond_1
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1051
    const-string/jumbo v0, "handleExtrasChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->handleExtrasChanged(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private hold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 866
    const-string/jumbo v0, "hold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 867
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 868
    const-string/jumbo v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onHold()V

    .line 865
    :goto_0
    return-void

    .line 870
    :cond_0
    const-string/jumbo v0, "hold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onHold()V

    goto :goto_0
.end method

.method private mergeConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 986
    const-string/jumbo v1, "mergeConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 987
    const-string/jumbo v1, "mergeConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 988
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 989
    invoke-virtual {v0}, Landroid/telecom/Conference;->onMerge()V

    .line 985
    :cond_0
    return-void
.end method

.method private onAccountsInitialized()V
    .locals 3

    .prologue
    .line 1387
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    .line 1388
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "r$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    .line 1389
    .local v0, "r":Ljava/lang/Runnable;
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 1391
    .end local v0    # "r":Ljava/lang/Runnable;
    :cond_0
    iget-object v2, p0, Landroid/telecom/ConnectionService;->mPreInitializationConnectionRequests:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1386
    return-void
.end method

.method private onAdapterAttached()V
    .locals 2

    .prologue
    .line 1061
    iget-boolean v0, p0, Landroid/telecom/ConnectionService;->mAreAccountsInitialized:Z

    if-eqz v0, :cond_0

    .line 1063
    return-void

    .line 1066
    :cond_0
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    new-instance v1, Landroid/telecom/ConnectionService$5;

    invoke-direct {v1, p0}, Landroid/telecom/ConnectionService$5;-><init>(Landroid/telecom/ConnectionService;)V

    invoke-virtual {v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->queryRemoteConnectionServices(Lcom/android/internal/telecom/RemoteServiceCallback;)V

    .line 1060
    return-void
.end method

.method private onCallAudioStateChanged(Ljava/lang/String;Landroid/telecom/CallAudioState;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "callAudioState"    # Landroid/telecom/CallAudioState;

    .prologue
    .line 884
    const-string/jumbo v0, "onAudioStateChanged %s %s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 885
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 886
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    .line 883
    :goto_0
    return-void

    .line 889
    :cond_0
    const-string/jumbo v0, "onCallAudioStateChanged"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->setCallAudioState(Landroid/telecom/CallAudioState;)V

    goto :goto_0
.end method

.method private onPostDialContinue(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "proceed"    # Z

    .prologue
    .line 1056
    const-string/jumbo v0, "onPostDialContinue(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1057
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPostDialContinue(Z)V

    .line 1055
    return-void
.end method

.method private playDtmfTone(Ljava/lang/String;C)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "digit"    # C

    .prologue
    .line 895
    const-string/jumbo v0, "playDtmfTone %s %c"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 896
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 897
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onPlayDtmfTone(C)V

    .line 894
    :goto_0
    return-void

    .line 899
    :cond_0
    const-string/jumbo v0, "playDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Conference;->onPlayDtmfTone(C)V

    goto :goto_0
.end method

.method private pullExternalCall(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 1009
    const-string/jumbo v1, "pullExternalCall(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1010
    const-string/jumbo v1, "pullExternalCall"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 1011
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    .line 1012
    invoke-virtual {v0}, Landroid/telecom/Connection;->onPullExternalCall()V

    .line 1008
    :cond_0
    return-void
.end method

.method private reject(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 842
    const-string/jumbo v0, "reject %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 843
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onReject()V

    .line 841
    return-void
.end method

.method private reject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "rejectWithMessage"    # Ljava/lang/String;

    .prologue
    .line 847
    const-string/jumbo v0, "reject %s with message"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    const-string/jumbo v0, "reject"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/telecom/Connection;->onReject(Ljava/lang/String;)V

    .line 846
    return-void
.end method

.method private removeConference(Landroid/telecom/Conference;)V
    .locals 2
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1468
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1469
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceListener:Landroid/telecom/Conference$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Conference;->removeListener(Landroid/telecom/Conference$Listener;)Landroid/telecom/Conference;

    .line 1471
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1472
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1473
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1467
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private sendCallEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1026
    const-string/jumbo v1, "sendCallEvent(%s, %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1027
    const-string/jumbo v1, "sendCallEvent"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    .line 1028
    .local v0, "connection":Landroid/telecom/Connection;
    if-eqz v0, :cond_0

    .line 1029
    invoke-virtual {v0, p2, p3}, Landroid/telecom/Connection;->onCallEvent(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 1025
    :cond_0
    return-void
.end method

.method private silence(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 852
    const-string/jumbo v0, "silence %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 853
    const-string/jumbo v0, "silence"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onSilence()V

    .line 851
    return-void
.end method

.method private splitFromConference(Ljava/lang/String;)V
    .locals 6
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 960
    const-string/jumbo v2, "splitFromConference(%s)"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 962
    const-string/jumbo v2, "splitFromConference"

    invoke-direct {p0, p1, v2}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v1

    .line 963
    .local v1, "connection":Landroid/telecom/Connection;
    invoke-static {}, Landroid/telecom/ConnectionService;->getNullConnection()Landroid/telecom/Connection;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 964
    const-string/jumbo v2, "Connection missing in conference request %s."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-static {p0, v2, v3}, Landroid/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 965
    return-void

    .line 968
    :cond_0
    invoke-virtual {v1}, Landroid/telecom/Connection;->getConference()Landroid/telecom/Conference;

    move-result-object v0

    .line 969
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_1

    .line 970
    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->onSeparate(Landroid/telecom/Connection;)V

    .line 959
    :cond_1
    return-void
.end method

.method private stopDtmfTone(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 904
    const-string/jumbo v0, "stopDtmfTone %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 905
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 906
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onStopDtmfTone()V

    .line 903
    :goto_0
    return-void

    .line 908
    :cond_0
    const-string/jumbo v0, "stopDtmfTone"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onStopDtmfTone()V

    goto :goto_0
.end method

.method private swapConference(Ljava/lang/String;)V
    .locals 4
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 994
    const-string/jumbo v1, "swapConference(%s)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 995
    const-string/jumbo v1, "swapConference"

    invoke-direct {p0, p1, v1}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    .line 996
    .local v0, "conference":Landroid/telecom/Conference;
    if-eqz v0, :cond_0

    .line 997
    invoke-virtual {v0}, Landroid/telecom/Conference;->onSwap()V

    .line 993
    :cond_0
    return-void
.end method

.method private unhold(Ljava/lang/String;)V
    .locals 3
    .param p1, "callId"    # Ljava/lang/String;

    .prologue
    .line 875
    const-string/jumbo v0, "unhold %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {p0, v0, v1}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 876
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 877
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConnectionForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Connection;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Connection;->onUnhold()V

    .line 874
    :goto_0
    return-void

    .line 879
    :cond_0
    const-string/jumbo v0, "unhold"

    invoke-direct {p0, p1, v0}, Landroid/telecom/ConnectionService;->findConferenceForAction(Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/Conference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/Conference;->onUnhold()V

    goto :goto_0
.end method


# virtual methods
.method public final addConference(Landroid/telecom/Conference;)V
    .locals 18
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1160
    const-string/jumbo v3, "addConference: conference=%s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1162
    invoke-direct/range {p0 .. p1}, Landroid/telecom/ConnectionService;->addConferenceInternal(Landroid/telecom/Conference;)Ljava/lang/String;

    move-result-object v17

    .line 1163
    .local v17, "id":Ljava/lang/String;
    if-eqz v17, :cond_4

    .line 1164
    new-instance v7, Ljava/util/ArrayList;

    const/4 v3, 0x2

    invoke-direct {v7, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1165
    .local v7, "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    .local v15, "connection$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/Connection;

    .line 1166
    .local v14, "connection":Landroid/telecom/Connection;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v14}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1167
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1170
    .end local v14    # "connection":Landroid/telecom/Connection;
    :cond_1
    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/telecom/Conference;->setTelecomCallId(Ljava/lang/String;)V

    .line 1171
    new-instance v2, Landroid/telecom/ParcelableConference;

    .line 1172
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 1173
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getState()I

    move-result v4

    .line 1174
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionCapabilities()I

    move-result v5

    .line 1175
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectionProperties()I

    move-result v6

    .line 1177
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v8

    if-nez v8, :cond_3

    .line 1178
    const/4 v8, 0x0

    .line 1179
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v9

    .line 1180
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnectTimeMillis()J

    move-result-wide v10

    .line 1181
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v12

    .line 1182
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getExtras()Landroid/os/Bundle;

    move-result-object v13

    .line 1171
    invoke-direct/range {v2 .. v13}, Landroid/telecom/ParcelableConference;-><init>(Landroid/telecom/PhoneAccountHandle;IIILjava/util/List;Lcom/android/internal/telecom/IVideoProvider;IJLandroid/telecom/StatusHints;Landroid/os/Bundle;)V

    .line 1184
    .local v2, "parcelableConference":Landroid/telecom/ParcelableConference;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addConferenceCall(Ljava/lang/String;Landroid/telecom/ParcelableConference;)V

    .line 1185
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setVideoProvider(Ljava/lang/String;Landroid/telecom/Connection$VideoProvider;)V

    .line 1186
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoState()I

    move-result v4

    move-object/from16 v0, v17

    invoke-virtual {v3, v0, v4}, Landroid/telecom/ConnectionServiceAdapter;->setVideoState(Ljava/lang/String;I)V

    .line 1189
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getConnections()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :cond_2
    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telecom/Connection;

    .line 1190
    .restart local v14    # "connection":Landroid/telecom/Connection;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1191
    .local v16, "connectionId":Ljava/lang/String;
    if-eqz v16, :cond_2

    .line 1192
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-virtual {v3, v0, v1}, Landroid/telecom/ConnectionServiceAdapter;->setIsConferenced(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1178
    .end local v2    # "parcelableConference":Landroid/telecom/ParcelableConference;
    .end local v14    # "connection":Landroid/telecom/Connection;
    .end local v16    # "connectionId":Ljava/lang/String;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/telecom/Conference;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v8

    goto :goto_1

    .line 1159
    .end local v7    # "connectionIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v15    # "connection$iterator":Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method public final addExistingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)V
    .locals 23
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1208
    invoke-direct/range {p0 .. p2}, Landroid/telecom/ConnectionService;->addExistingConnectionInternal(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/Connection;)Ljava/lang/String;

    move-result-object v22

    .line 1209
    .local v22, "id":Ljava/lang/String;
    if-eqz v22, :cond_0

    .line 1210
    new-instance v20, Ljava/util/ArrayList;

    const/4 v3, 0x0

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1212
    .local v20, "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Landroid/telecom/ParcelableConnection;

    .line 1214
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getState()I

    move-result v4

    .line 1215
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionCapabilities()I

    move-result v5

    .line 1216
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectionProperties()I

    move-result v6

    .line 1217
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getSupportedAudioRoutes()I

    move-result v7

    .line 1218
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddress()Landroid/net/Uri;

    move-result-object v8

    .line 1219
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAddressPresentation()I

    move-result v9

    .line 1220
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayName()Ljava/lang/String;

    move-result-object v10

    .line 1221
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getCallerDisplayNamePresentation()I

    move-result v11

    .line 1222
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1223
    const/4 v12, 0x0

    .line 1224
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoState()I

    move-result v13

    .line 1225
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->isRingbackRequested()Z

    move-result v14

    .line 1226
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getAudioModeIsVoip()Z

    move-result v15

    .line 1227
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getConnectTimeMillis()J

    move-result-wide v16

    .line 1228
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getStatusHints()Landroid/telecom/StatusHints;

    move-result-object v18

    .line 1229
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v19

    .line 1231
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getExtras()Landroid/os/Bundle;

    move-result-object v21

    move-object/from16 v3, p1

    .line 1212
    invoke-direct/range {v2 .. v21}, Landroid/telecom/ParcelableConnection;-><init>(Landroid/telecom/PhoneAccountHandle;IIIILandroid/net/Uri;ILjava/lang/String;ILcom/android/internal/telecom/IVideoProvider;IZZJLandroid/telecom/StatusHints;Landroid/telecom/DisconnectCause;Ljava/util/List;Landroid/os/Bundle;)V

    .line 1232
    .local v2, "parcelableConnection":Landroid/telecom/ParcelableConnection;
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    move-object/from16 v0, v22

    invoke-virtual {v3, v0, v2}, Landroid/telecom/ConnectionServiceAdapter;->addExistingConnection(Ljava/lang/String;Landroid/telecom/ParcelableConnection;)V

    .line 1206
    .end local v2    # "parcelableConnection":Landroid/telecom/ParcelableConnection;
    .end local v20    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    return-void

    .line 1223
    .restart local v20    # "emptyList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/telecom/Connection;->getVideoProvider()Landroid/telecom/Connection$VideoProvider;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telecom/Connection$VideoProvider;->getInterface()Lcom/android/internal/telecom/IVideoProvider;

    move-result-object v12

    goto :goto_0
.end method

.method addRemoteConference(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "remoteConference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1378
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V

    .line 1377
    return-void
.end method

.method addRemoteExistingConnection(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "remoteConnection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1383
    invoke-virtual {p0, p1}, Landroid/telecom/ConnectionService;->onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V

    .line 1382
    return-void
.end method

.method public final conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V
    .locals 1
    .param p1, "remoteConnection1"    # Landroid/telecom/RemoteConnection;
    .param p2, "remoteConnection2"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1148
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/RemoteConnectionManager;->conferenceRemoteConnections(Landroid/telecom/RemoteConnection;Landroid/telecom/RemoteConnection;)V

    .line 1147
    return-void
.end method

.method public containsConference(Landroid/telecom/Conference;)Z
    .locals 1
    .param p1, "conference"    # Landroid/telecom/Conference;

    .prologue
    .line 1373
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mIdByConference:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final createRemoteIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1112
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 1113
    const/4 v1, 0x1

    .line 1112
    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final createRemoteOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/RemoteConnection;
    .locals 2
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1131
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mRemoteConnectionManager:Landroid/telecom/RemoteConnectionManager;

    .line 1132
    const/4 v1, 0x0

    .line 1131
    invoke-virtual {v0, p1, p2, v1}, Landroid/telecom/RemoteConnectionManager;->createRemoteConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;Z)Landroid/telecom/RemoteConnection;

    move-result-object v0

    return-object v0
.end method

.method public final getAllConferences()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/Conference;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1253
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConferenceById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public final getAllConnections()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Landroid/telecom/Connection;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1243
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public onAddParticipant(Landroid/telecom/Connection;Ljava/lang/String;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/Connection;
    .param p2, "participant"    # Ljava/lang/String;

    .prologue
    .line 1349
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 745
    iget-object v0, p0, Landroid/telecom/ConnectionService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onConference(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 0
    .param p1, "connection1"    # Landroid/telecom/Connection;
    .param p2, "connection2"    # Landroid/telecom/Connection;

    .prologue
    .line 1336
    return-void
.end method

.method public onCreateIncomingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1269
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateOutgoingConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1308
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateUnknownConnection(Landroid/telecom/PhoneAccountHandle;Landroid/telecom/ConnectionRequest;)Landroid/telecom/Connection;
    .locals 1
    .param p1, "connectionManagerPhoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "request"    # Landroid/telecom/ConnectionRequest;

    .prologue
    .line 1325
    const/4 v0, 0x0

    return-object v0
.end method

.method public onRemoteConferenceAdded(Landroid/telecom/RemoteConference;)V
    .locals 0
    .param p1, "conference"    # Landroid/telecom/RemoteConference;

    .prologue
    .line 1361
    return-void
.end method

.method public onRemoteExistingConnectionAdded(Landroid/telecom/RemoteConnection;)V
    .locals 0
    .param p1, "connection"    # Landroid/telecom/RemoteConnection;

    .prologue
    .line 1367
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 751
    invoke-direct {p0}, Landroid/telecom/ConnectionService;->endAllConnections()V

    .line 752
    invoke-super {p0, p1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method protected removeConnection(Landroid/telecom/Connection;)V
    .locals 2
    .param p1, "connection"    # Landroid/telecom/Connection;

    .prologue
    .line 1432
    invoke-virtual {p1, p0}, Landroid/telecom/Connection;->unsetConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1433
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p1, v1}, Landroid/telecom/Connection;->removeConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1434
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1435
    .local v0, "id":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1436
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1437
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1438
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mAdapter:Landroid/telecom/ConnectionServiceAdapter;

    invoke-virtual {v1, v0}, Landroid/telecom/ConnectionServiceAdapter;->removeCall(Ljava/lang/String;)V

    .line 1431
    :cond_0
    return-void
.end method

.method public triggerConferenceRecalculate()V
    .locals 0

    .prologue
    .line 1279
    return-void
.end method

.method protected updateConnection(Landroid/telecom/Connection;Landroid/telecom/Connection;)V
    .locals 4
    .param p1, "old"    # Landroid/telecom/Connection;
    .param p2, "update"    # Landroid/telecom/Connection;

    .prologue
    const/4 v3, 0x0

    .line 1577
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateConnection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1578
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1579
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1580
    .local v0, "id":Ljava/lang/String;
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1581
    const-string/jumbo v1, "Replacing old connection with new connection"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1582
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionById:Ljava/util/Map;

    invoke-interface {v1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mIdByConnection:Ljava/util/Map;

    invoke-interface {v1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1585
    iget-object v1, p0, Landroid/telecom/ConnectionService;->mConnectionListener:Landroid/telecom/Connection$Listener;

    invoke-virtual {p2, v1}, Landroid/telecom/Connection;->addConnectionListener(Landroid/telecom/Connection$Listener;)Landroid/telecom/Connection;

    .line 1586
    invoke-virtual {p2, p0}, Landroid/telecom/Connection;->setConnectionService(Landroid/telecom/ConnectionService;)V

    .line 1576
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1589
    :cond_1
    const-string/jumbo v1, "Connection not found"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Landroid/telecom/Log;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
