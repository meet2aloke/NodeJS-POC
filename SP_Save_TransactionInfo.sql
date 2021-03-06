USE [OnlineDev]
GO
/****** Object:  StoredProcedure [dbo].[SP_Save_TransactionInfo]    Script Date: 1/28/2021 1:08:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE PROCEDURE [dbo].[SP_Save_TransactionInfo]
    @RequestNo nvarchar(50) = null,
	@Amount  nvarchar(50) = null,
	@Department nvarchar(10) = null,
	@Division nvarchar(10) = null,
	@PayeeName nvarchar(300) = null,
	@Electronics nvarchar(10) = null,
	@Meals nvarchar(10) = null,
	@SpecFund nvarchar(10) = null,
	@Speaker nvarchar(10), --Yes/No
	@OriginalForm nvarchar(100) = null,
	@SupportingDocs nvarchar(100) = null,
	@SpeakerForm nvarchar(100) = null,
	@DocLocation nvarchar(500) = null,
	@Comments nvarchar(max)
AS
  SET NOCOUNT OFF
  BEGIN TRANSACTION MASTER

      INSERT INTO [dbo].[TransactionInfo]
			(RequestNo,Amount,Department,Division,PayeeName,Electronics,Meals,SpecFund,Speaker,OriginalForm,SupportingDocs,SpeakerForm,DocLocation,Comments)
		VALUES (@RequestNo,@Amount,@Department,@Division,@PayeeName,@Electronics,@Meals,@SpecFund,@Speaker,@OriginalForm,@SupportingDocs,@SpeakerForm,@DocLocation,@Comments)


    IF (@@error <> 0)
    BEGIN
      ROLLBACK TRANSACTION MASTER
    END
    ELSE
    BEGIN
    COMMIT TRANSACTION MASTER
  END

