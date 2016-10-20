.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFile"
.end annotation


# instance fields
.field mAnrFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mEmailFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 6
    .param p1, "this$0"    # Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1297
    .local p2, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[B>;"
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1298
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    .line 1299
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    .line 1300
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    .line 1302
    const/4 v0, 0x0

    .line 1303
    .local v0, "recNum":I
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "record$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 1304
    .local v2, "record":[B
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v4, v2

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1305
    .local v1, "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1306
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1297
    .end local v1    # "recTlv":Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v2    # "record":[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;ILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 7
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p3, "parentTag"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1346
    .local p2, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .local p4, "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p5, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v3, 0x0

    .line 1348
    .local v3, "tagNumberWithinParentTag":I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v2

    .line 1350
    .local v2, "tag":I
    const/16 v4, 0xa8

    if-ne p3, v4, :cond_1

    const/16 v4, 0xc1

    if-ne v2, v4, :cond_1

    .line 1351
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-set4(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 1353
    :cond_1
    const/16 v4, 0xa9

    if-ne p3, v4, :cond_2

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-get2(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/16 v4, 0xca

    if-ne v2, v4, :cond_2

    .line 1354
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-set2(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 1355
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-set3(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 1356
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEf: EmailPresentInIap tag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-get1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1358
    :cond_2
    const/16 v4, 0xa9

    if-ne p3, v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {v4}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-get2(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/16 v4, 0xc4

    if-ne v2, v4, :cond_3

    .line 1359
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-set0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Z)Z

    .line 1360
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {v4, v3}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-set1(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;I)I

    .line 1361
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEf: AnrPresentInIap tag = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-static {v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-get0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->-wrap0(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 1363
    :cond_3
    packed-switch v2, :pswitch_data_0

    .line 1391
    :goto_0
    add-int/lit8 v3, v3, 0x1

    .line 1392
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1343
    return-void

    .line 1376
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1377
    .local v0, "data":[B
    const/4 v4, 0x0

    aget-byte v4, v0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    and-int/lit16 v5, v5, 0xff

    or-int v1, v4, v5

    .line 1378
    .local v1, "efid":I
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {p2, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1380
    const/16 v4, 0xa8

    if-ne p3, v4, :cond_4

    .line 1381
    const/16 v4, 0xc4

    if-ne v2, v4, :cond_5

    .line 1382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p4, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1387
    :cond_4
    :goto_1
    const-string/jumbo v4, "UsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "parseEf.put("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ") parent tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1383
    :cond_5
    const/16 v4, 0xca

    if-ne v2, v4, :cond_4

    .line 1384
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1363
    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 10
    .param p1, "tlv"    # Lcom/android/internal/telephony/gsm/SimTlv;
    .param p2, "recNum"    # I

    .prologue
    const/4 v9, 0x0

    .line 1311
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseTag: recNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1316
    .local v2, "val":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    .local v4, "anrList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1319
    .local v5, "emailList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v3

    .line 1320
    .local v3, "tag":I
    packed-switch v3, :pswitch_data_0

    .line 1329
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1331
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 1332
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mAnrFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1333
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseTag: recNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ANR file list:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_2

    .line 1336
    const-string/jumbo v0, "UsimPhoneBookManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "parseTag: recNum="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " EMAIL file list:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mEmailFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1339
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1310
    return-void

    .line 1324
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v6

    .line 1325
    .local v6, "data":[B
    new-instance v1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v0, v6

    invoke-direct {v1, v6, v9, v0}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .local v1, "tlvEf":Lcom/android/internal/telephony/gsm/SimTlv;
    move-object v0, p0

    .line 1326
    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_0

    .line 1320
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
