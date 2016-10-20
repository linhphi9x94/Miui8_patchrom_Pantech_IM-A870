.class public Landroid/telecom/Call$Details;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Details"
.end annotation


# static fields
.field public static final CAPABILITY_ADD_PARTICIPANT:I = 0x2000000

.field public static final CAPABILITY_CAN_PAUSE_VIDEO:I = 0x100000

.field public static final CAPABILITY_CAN_UPGRADE_TO_VIDEO:I = 0x80000

.field public static final CAPABILITY_DISCONNECT_FROM_CONFERENCE:I = 0x2000

.field public static final CAPABILITY_HOLD:I = 0x1

.field public static final CAPABILITY_MANAGE_CONFERENCE:I = 0x80

.field public static final CAPABILITY_MERGE_CONFERENCE:I = 0x4

.field public static final CAPABILITY_MUTE:I = 0x40

.field public static final CAPABILITY_RESPOND_VIA_TEXT:I = 0x20

.field public static final CAPABILITY_SEPARATE_FROM_CONFERENCE:I = 0x1000

.field public static final CAPABILITY_SPEED_UP_MT_AUDIO:I = 0x40000

.field public static final CAPABILITY_SUPPORTS_DOWNGRADE_TO_VOICE_LOCAL:I = 0x800000

.field public static final CAPABILITY_SUPPORTS_DOWNGRADE_TO_VOICE_REMOTE:I = 0x1000000

.field public static final CAPABILITY_SUPPORTS_TRANSFER:I = 0x4000000

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL:I = 0x300

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_RX:I = 0x100

.field public static final CAPABILITY_SUPPORTS_VT_LOCAL_TX:I = 0x200

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL:I = 0xc00

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_RX:I = 0x400

.field public static final CAPABILITY_SUPPORTS_VT_REMOTE_TX:I = 0x800

.field public static final CAPABILITY_SUPPORT_HOLD:I = 0x2

.field public static final CAPABILITY_SWAP_CONFERENCE:I = 0x8

.field public static final CAPABILITY_UNUSED_1:I = 0x10

.field public static final CAPABILITY_VOICE_PRIVACY:I = 0x400000

.field public static final PROPERTY_ADDITIONAL_CALL_FORWARDED:I = 0x100

.field public static final PROPERTY_CONFERENCE:I = 0x1

.field public static final PROPERTY_DIALING_IS_WAITING:I = 0x80

.field public static final PROPERTY_EMERGENCY_CALLBACK_MODE:I = 0x4

.field public static final PROPERTY_GENERIC_CONFERENCE:I = 0x2

.field public static final PROPERTY_HELD_REMOTELY:I = 0x40

.field public static final PROPERTY_HIGH_DEF_AUDIO:I = 0x10

.field public static final PROPERTY_REMOTE_INCOMING_CALLS_BARRED:I = 0x200

.field public static final PROPERTY_WAS_FORWARDED:I = 0x20

.field public static final PROPERTY_WIFI:I = 0x8


# instance fields
.field private final mAccountHandle:Landroid/telecom/PhoneAccountHandle;

.field private final mCallCapabilities:I

.field private final mCallProperties:I

.field private final mCallerDisplayName:Ljava/lang/String;

.field private final mCallerDisplayNamePresentation:I

.field private final mConnectTimeMillis:J

.field private final mCreateTimeMillis:J

.field private final mDisconnectCause:Landroid/telecom/DisconnectCause;

.field private final mExtras:Landroid/os/Bundle;

.field private final mGatewayInfo:Landroid/telecom/GatewayInfo;

.field private final mHandle:Landroid/net/Uri;

.field private final mHandlePresentation:I

.field private final mIntentExtras:Landroid/os/Bundle;

.field private final mStatusHints:Landroid/telecom/StatusHints;

.field private final mVideoState:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;ILjava/lang/String;ILandroid/telecom/PhoneAccountHandle;IILandroid/telecom/DisconnectCause;JJLandroid/telecom/GatewayInfo;ILandroid/telecom/StatusHints;Landroid/os/Bundle;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "handle"    # Landroid/net/Uri;
    .param p2, "handlePresentation"    # I
    .param p3, "callerDisplayName"    # Ljava/lang/String;
    .param p4, "callerDisplayNamePresentation"    # I
    .param p5, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p6, "capabilities"    # I
    .param p7, "properties"    # I
    .param p8, "disconnectCause"    # Landroid/telecom/DisconnectCause;
    .param p9, "createTimeMillis"    # J
    .param p11, "connectTimeMillis"    # J
    .param p13, "gatewayInfo"    # Landroid/telecom/GatewayInfo;
    .param p14, "videoState"    # I
    .param p15, "statusHints"    # Landroid/telecom/StatusHints;
    .param p16, "extras"    # Landroid/os/Bundle;
    .param p17, "intentExtras"    # Landroid/os/Bundle;

    .prologue
    .line 643
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p1, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    .line 660
    iput p2, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    .line 661
    iput-object p3, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    .line 662
    iput p4, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    .line 663
    iput-object p5, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    .line 664
    iput p6, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    .line 665
    iput p7, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    .line 666
    iput-object p8, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    .line 667
    iput-wide p9, p0, Landroid/telecom/Call$Details;->mCreateTimeMillis:J

    .line 668
    iput-wide p11, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    .line 669
    iput-object p13, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    .line 670
    iput p14, p0, Landroid/telecom/Call$Details;->mVideoState:I

    .line 671
    move-object/from16 v0, p15

    iput-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    .line 672
    move-object/from16 v0, p16

    iput-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    .line 673
    move-object/from16 v0, p17

    iput-object v0, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    .line 658
    return-void
.end method

.method public static can(II)Z
    .locals 2
    .param p0, "capabilities"    # I
    .param p1, "capability"    # I

    .prologue
    const/4 v0, 0x0

    .line 327
    and-int v1, p0, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static capabilitiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "capabilities"    # I

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Capabilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 350
    const-string/jumbo v1, " CAPABILITY_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 353
    const-string/jumbo v1, " CAPABILITY_SUPPORT_HOLD"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    :cond_1
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 356
    const-string/jumbo v1, " CAPABILITY_MERGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    :cond_2
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    const-string/jumbo v1, " CAPABILITY_SWAP_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 361
    :cond_3
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 362
    const-string/jumbo v1, " CAPABILITY_RESPOND_VIA_TEXT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    :cond_4
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 365
    const-string/jumbo v1, " CAPABILITY_MUTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    :cond_5
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 368
    const-string/jumbo v1, " CAPABILITY_MANAGE_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    :cond_6
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 371
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    :cond_7
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 374
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    :cond_8
    const/16 v1, 0x300

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 377
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_LOCAL_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 379
    :cond_9
    const/16 v1, 0x400

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 380
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_RX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 382
    :cond_a
    const/16 v1, 0x800

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 383
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_TX"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    :cond_b
    const/high16 v1, 0x800000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 386
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_DOWNGRADE_TO_VOICE_LOCAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 388
    :cond_c
    const/high16 v1, 0x1000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 389
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_DOWNGRADE_TO_VOICE_REMOTE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 391
    :cond_d
    const/16 v1, 0xc00

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 392
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_VT_REMOTE_BIDIRECTIONAL"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    :cond_e
    const/high16 v1, 0x40000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 395
    const-string/jumbo v1, " CAPABILITY_SPEED_UP_MT_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_f
    const/high16 v1, 0x80000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 398
    const-string/jumbo v1, " CAPABILITY_CAN_UPGRADE_TO_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 400
    :cond_10
    const/high16 v1, 0x100000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 401
    const-string/jumbo v1, " CAPABILITY_CAN_PAUSE_VIDEO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 403
    :cond_11
    const/high16 v1, 0x400000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 404
    const-string/jumbo v1, " CAPABILITY_VOICE_PRIVACY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 406
    :cond_12
    const/high16 v1, 0x2000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 407
    const-string/jumbo v1, " CAPABILITY_ADD_PARTICIPANT"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 409
    :cond_13
    const/high16 v1, 0x4000000

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 410
    const-string/jumbo v1, " CAPABILITY_SUPPORTS_TRANSFER"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    :cond_14
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 413
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static hasProperty(II)Z
    .locals 2
    .param p0, "properties"    # I
    .param p1, "property"    # I

    .prologue
    const/4 v0, 0x0

    .line 424
    and-int v1, p0, p1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static propertiesToString(I)Ljava/lang/String;
    .locals 2
    .param p0, "properties"    # I

    .prologue
    .line 444
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 445
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "[Properties:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    const/4 v1, 0x1

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 447
    const-string/jumbo v1, " PROPERTY_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    :cond_0
    const/4 v1, 0x2

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 450
    const-string/jumbo v1, " PROPERTY_GENERIC_CONFERENCE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    :cond_1
    const/16 v1, 0x8

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 453
    const-string/jumbo v1, " PROPERTY_WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    :cond_2
    const/16 v1, 0x10

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 456
    const-string/jumbo v1, " PROPERTY_HIGH_DEF_AUDIO"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    :cond_3
    const/4 v1, 0x4

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 459
    const-string/jumbo v1, " PROPERTY_EMERGENCY_CALLBACK_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    :cond_4
    const/16 v1, 0x20

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 462
    const-string/jumbo v1, " PROPERTY_WAS_FORWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    :cond_5
    const/16 v1, 0x40

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 465
    const-string/jumbo v1, " PROPERTY_HELD_REMOTELY"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    :cond_6
    const/16 v1, 0x80

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 468
    const-string/jumbo v1, " PROPERTY_DIALING_IS_WAITING"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 470
    :cond_7
    const/16 v1, 0x100

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 471
    const-string/jumbo v1, " PROPERTY_ADDITIONAL_CALL_FORWARDED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 473
    :cond_8
    const/16 v1, 0x200

    invoke-static {p0, v1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 474
    const-string/jumbo v1, " PROPERTY_REMOTE_INCOMING_CALLS_BARRED"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 477
    :cond_9
    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 478
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public can(I)Z
    .locals 1
    .param p1, "capability"    # I

    .prologue
    .line 337
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v0, p1}, Landroid/telecom/Call$Details;->can(II)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 599
    instance-of v2, p1, Landroid/telecom/Call$Details;

    if-eqz v2, :cond_1

    move-object v0, p1

    .line 600
    check-cast v0, Landroid/telecom/Call$Details;

    .line 602
    .local v0, "d":Landroid/telecom/Call$Details;
    iget-object v2, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 603
    iget v2, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 604
    iget-object v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 605
    iget v2, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 606
    iget v3, v0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 605
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 607
    iget-object v2, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 608
    iget v2, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 609
    iget v2, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 610
    iget-object v2, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 611
    iget-wide v2, p0, Landroid/telecom/Call$Details;->mCreateTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, v0, Landroid/telecom/Call$Details;->mCreateTimeMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 612
    iget-wide v2, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v4, v0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 613
    iget-object v2, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 614
    iget v2, p0, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 615
    iget-object v2, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 616
    iget-object v2, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    iget-object v3, v0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Landroid/telecom/Call;->-wrap0(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    .line 602
    if-eqz v2, :cond_0

    .line 617
    iget-object v1, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    iget-object v2, v0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v1, v2}, Landroid/telecom/Call;->-wrap0(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v1

    .line 601
    :cond_0
    return v1

    .line 619
    .end local v0    # "d":Landroid/telecom/Call$Details;
    :cond_1
    return v1
.end method

.method public getAccountHandle()Landroid/telecom/PhoneAccountHandle;
    .locals 1

    .prologue
    .line 517
    iget-object v0, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    return-object v0
.end method

.method public getCallCapabilities()I
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    return v0
.end method

.method public getCallProperties()I
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    return v0
.end method

.method public getCallerDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    return-object v0
.end method

.method public getCallerDisplayNamePresentation()I
    .locals 1

    .prologue
    .line 509
    iget v0, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    return v0
.end method

.method public final getConnectTimeMillis()J
    .locals 2

    .prologue
    .line 550
    iget-wide v0, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    return-wide v0
.end method

.method public getCreateTimeMillis()J
    .locals 2

    .prologue
    .line 558
    iget-wide v0, p0, Landroid/telecom/Call$Details;->mCreateTimeMillis:J

    return-wide v0
.end method

.method public getDisconnectCause()Landroid/telecom/DisconnectCause;
    .locals 1

    .prologue
    .line 541
    iget-object v0, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getGatewayInfo()Landroid/telecom/GatewayInfo;
    .locals 1

    .prologue
    .line 565
    iget-object v0, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    return-object v0
.end method

.method public getHandle()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    return-object v0
.end method

.method public getHandlePresentation()I
    .locals 1

    .prologue
    .line 494
    iget v0, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    return v0
.end method

.method public getIntentExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 594
    iget-object v0, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public getStatusHints()Landroid/telecom/StatusHints;
    .locals 1

    .prologue
    .line 580
    iget-object v0, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    return-object v0
.end method

.method public getVideoState()I
    .locals 1

    .prologue
    .line 572
    iget v0, p0, Landroid/telecom/Call$Details;->mVideoState:I

    return v0
.end method

.method public hasProperty(I)Z
    .locals 1
    .param p1, "property"    # I

    .prologue
    .line 434
    iget v0, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v0, p1}, Landroid/telecom/Call$Details;->hasProperty(II)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 625
    iget-object v0, p0, Landroid/telecom/Call$Details;->mHandle:Landroid/net/Uri;

    invoke-static {v0}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v0

    .line 626
    iget v1, p0, Landroid/telecom/Call$Details;->mHandlePresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 627
    iget-object v1, p0, Landroid/telecom/Call$Details;->mCallerDisplayName:Ljava/lang/String;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 628
    iget v1, p0, Landroid/telecom/Call$Details;->mCallerDisplayNamePresentation:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 629
    iget-object v1, p0, Landroid/telecom/Call$Details;->mAccountHandle:Landroid/telecom/PhoneAccountHandle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 630
    iget v1, p0, Landroid/telecom/Call$Details;->mCallCapabilities:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 631
    iget v1, p0, Landroid/telecom/Call$Details;->mCallProperties:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 632
    iget-object v1, p0, Landroid/telecom/Call$Details;->mDisconnectCause:Landroid/telecom/DisconnectCause;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 633
    iget-wide v2, p0, Landroid/telecom/Call$Details;->mCreateTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 634
    iget-wide v2, p0, Landroid/telecom/Call$Details;->mConnectTimeMillis:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 635
    iget-object v1, p0, Landroid/telecom/Call$Details;->mGatewayInfo:Landroid/telecom/GatewayInfo;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 636
    iget v1, p0, Landroid/telecom/Call$Details;->mVideoState:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 637
    iget-object v1, p0, Landroid/telecom/Call$Details;->mStatusHints:Landroid/telecom/StatusHints;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 638
    iget-object v1, p0, Landroid/telecom/Call$Details;->mExtras:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 639
    iget-object v1, p0, Landroid/telecom/Call$Details;->mIntentExtras:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v1

    .line 625
    add-int/2addr v0, v1

    .line 624
    return v0
.end method
