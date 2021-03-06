USE [RYRecordDB]
GO
/****** 对象:  Table [dbo].[RecordSendPresent]    脚本日期: 02/15/2017 16:20:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordSendPresent](
	[PresentID] [tinyint] NOT NULL,
	[RcvUserID] [int] NOT NULL,
	[SendUserID] [int] NOT NULL,
	[LovelinessRcv] [int] NOT NULL,
	[LovelinessSend] [int] NOT NULL,
	[PresentPrice] [int] NOT NULL,
	[PresentCount] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[SendTime] [datetime] NOT NULL CONSTRAINT [DF_RecordSendPresent_SendTime]  DEFAULT (getdate()),
	[ClientIP] [nvarchar](15) NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'礼物标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'PresentID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'RcvUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'SendUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'魅力数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'LovelinessRcv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'魅力数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'LovelinessSend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'礼物价钱' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'PresentPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'礼物数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'PresentCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'SendTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendPresent', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
/****** 对象:  Table [dbo].[RecordGrantGameScore]    脚本日期: 02/15/2017 16:19:59 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordGrantGameScore](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL,
	[ClientIP] [varchar](15) NOT NULL CONSTRAINT [DF_RecordGrantGameScore_VisitIP]  DEFAULT (N'000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordGrantGameScore_CreateDatetime]  DEFAULT (getdate()),
	[UserID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[CurScore] [bigint] NOT NULL CONSTRAINT [DF_RecordGrantGameScore_CurScore]  DEFAULT ((0)),
	[AddScore] [int] NOT NULL CONSTRAINT [DF_RecordGrantGameScore_AddScore]  DEFAULT ((0)),
	[Reason] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordGrantGameScore_Reason]  DEFAULT (N''),
 CONSTRAINT [PK_RecordGrantGameScore] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameScore', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameScore', @level2type=N'COLUMN',@level2name=N'MasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来访地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameScore', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameScore', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameScore', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameScore', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameScore', @level2type=N'COLUMN',@level2name=N'CurScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增加积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameScore', @level2type=N'COLUMN',@level2name=N'AddScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作理由' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameScore', @level2type=N'COLUMN',@level2name=N'Reason'
GO
/****** 对象:  Table [dbo].[RecordSignin]    脚本日期: 02/15/2017 16:20:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordSignin](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[Gold] [int] NOT NULL CONSTRAINT [DF_RecordSingin_AwardGold]  DEFAULT ((0)),
	[ClinetIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordSignin_ClinetIP]  DEFAULT (''),
	[ClinetMachine] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordSignin_ClinetMachine]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordSignin_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordSingin] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日志标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSignin', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSignin', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSignin', @level2type=N'COLUMN',@level2name=N'Gold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领取地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSignin', @level2type=N'COLUMN',@level2name=N'ClinetIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领取机器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSignin', @level2type=N'COLUMN',@level2name=N'ClinetMachine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领取时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSignin', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordSendProperty]    脚本日期: 02/15/2017 16:20:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordSendProperty](
	[PropID] [tinyint] NOT NULL,
	[SourceUserID] [int] NOT NULL,
	[TargetUserID] [int] NOT NULL,
	[PropPrice] [int] NOT NULL,
	[PropCount] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[SendTime] [datetime] NOT NULL CONSTRAINT [DF_RecordSendProperty_SendTime]  DEFAULT (getdate()),
	[ClientIP] [nvarchar](15) NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendProperty', @level2type=N'COLUMN',@level2name=N'PropID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendProperty', @level2type=N'COLUMN',@level2name=N'SourceUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendProperty', @level2type=N'COLUMN',@level2name=N'TargetUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendProperty', @level2type=N'COLUMN',@level2name=N'PropPrice'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendProperty', @level2type=N'COLUMN',@level2name=N'PropCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendProperty', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendProperty', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendProperty', @level2type=N'COLUMN',@level2name=N'SendTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordSendProperty', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
/****** 对象:  Table [dbo].[RecordGrantClearScore]    脚本日期: 02/15/2017 16:19:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordGrantClearScore](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL,
	[ClientIP] [varchar](15) NOT NULL CONSTRAINT [DF_RecordGrantClearScore_ClientIP]  DEFAULT ('000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordGrantClearScore_CollectDate]  DEFAULT (getdate()),
	[UserID] [int] NOT NULL CONSTRAINT [DF_RecordGrantClearScore_UserID]  DEFAULT ((0)),
	[KindID] [int] NOT NULL,
	[CurScore] [bigint] NOT NULL CONSTRAINT [DF_RecordGrantClearScore_CurScore]  DEFAULT ((0)),
	[Reason] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordGrantClearScore_Reason]  DEFAULT (''),
 CONSTRAINT [PK_RecordGrantClearScore] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearScore', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearScore', @level2type=N'COLUMN',@level2name=N'MasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户端IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearScore', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'收集日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearScore', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearScore', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearScore', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前积分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearScore', @level2type=N'COLUMN',@level2name=N'CurScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'清零负分原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearScore', @level2type=N'COLUMN',@level2name=N'Reason'
GO
/****** 对象:  Table [dbo].[RecordEveryDayRoomData]    脚本日期: 02/15/2017 16:19:51 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordEveryDayRoomData](
	[DateID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[Waste] [bigint] NOT NULL CONSTRAINT [DF_RecordEveryDayRoomData_Waste]  DEFAULT ((0)),
	[Revenue] [bigint] NOT NULL CONSTRAINT [DF_RecordEveryDayRoomData_Revenue]  DEFAULT ((0)),
	[Medal] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayRoomData_Medal]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordEveryDayRoomData_InputDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordEveryDayRoomData] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC,
	[KindID] ASC,
	[ServerID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayRoomData', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayRoomData', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayRoomData', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'损耗' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayRoomData', @level2type=N'COLUMN',@level2name=N'Waste'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayRoomData', @level2type=N'COLUMN',@level2name=N'Revenue'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayRoomData', @level2type=N'COLUMN',@level2name=N'Medal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'录入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayRoomData', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordGrantClearFlee]    脚本日期: 02/15/2017 16:19:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordGrantClearFlee](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL,
	[ClientIP] [varchar](15) NOT NULL CONSTRAINT [DF_RecordGrantFlee_ClientIP]  DEFAULT ('000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordGrantFlee_CollectDate]  DEFAULT (getdate()),
	[UserID] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[CurFlee] [int] NOT NULL CONSTRAINT [DF_RecordGrantFlee_CurFlee]  DEFAULT ((0)),
	[Reason] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordGrantFlee_Reason]  DEFAULT (N''),
 CONSTRAINT [PK_RecordGrantFlee] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearFlee', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearFlee', @level2type=N'COLUMN',@level2name=N'MasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'服务地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearFlee', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearFlee', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearFlee', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前逃跑次数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearFlee', @level2type=N'COLUMN',@level2name=N'CurFlee'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'理由' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantClearFlee', @level2type=N'COLUMN',@level2name=N'Reason'
GO
/****** 对象:  Table [dbo].[RecordBuyProperty]    脚本日期: 02/15/2017 16:19:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordBuyProperty](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PropertyID] [int] NOT NULL,
	[PropertyName] [nvarchar](31) NOT NULL,
	[Cash] [decimal](18, 2) NOT NULL,
	[Gold] [bigint] NOT NULL,
	[UserMedal] [int] NOT NULL,
	[LoveLiness] [int] NOT NULL,
	[PropertyCount] [int] NOT NULL,
	[MemberDiscount] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RecordBuyProperty_MemberDiscount]  DEFAULT ((0)),
	[BuyCash] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RecordBuyProperty_BuyCash]  DEFAULT ((0)),
	[BuyGold] [bigint] NOT NULL CONSTRAINT [DF_RecordBuyProperty_BuyGold]  DEFAULT ((0)),
	[BuyUserMedal] [int] NOT NULL CONSTRAINT [DF_RecordBuyProperty_BuyUserMedal]  DEFAULT ((0)),
	[BuyLoveLiness] [int] NOT NULL CONSTRAINT [DF_RecordBuyProperty_BuyLoveLiness]  DEFAULT ((0)),
	[ClinetIP] [nvarchar](15) NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordBuyProperty_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordBuyProperty] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'PropertyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'PropertyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具游戏豆价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'Cash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具游戏币价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'Gold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具元宝价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'UserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具魅力值价格' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'LoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'PropertyCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'会员折扣' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'MemberDiscount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际购买游戏豆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'BuyCash'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际购买游戏币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'BuyGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际购买元宝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'BuyUserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实际购买魅力值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'BuyLoveLiness'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'ClinetIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'购买时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBuyProperty', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordGrantExperience]    脚本日期: 02/15/2017 16:19:56 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordGrantExperience](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL,
	[ClientIP] [varchar](15) NOT NULL CONSTRAINT [DF_RecordGrantExperience_ClientIP]  DEFAULT ('000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordGrantExperience_CollectDate]  DEFAULT (getdate()),
	[UserID] [int] NOT NULL,
	[CurExperience] [int] NOT NULL CONSTRAINT [DF_RecordGrantExperience_CurExperience]  DEFAULT ((0)),
	[AddExperience] [int] NOT NULL CONSTRAINT [DF_RecordGrantExperience_AddExperience]  DEFAULT ((0)),
	[Reason] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordGrantExperience_Reason]  DEFAULT (N''),
 CONSTRAINT [PK_RecordGrantExperience] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantExperience', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantExperience', @level2type=N'COLUMN',@level2name=N'MasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠予地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantExperience', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠予时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantExperience', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantExperience', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前经验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantExperience', @level2type=N'COLUMN',@level2name=N'CurExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'补加经验' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantExperience', @level2type=N'COLUMN',@level2name=N'AddExperience'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠予原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantExperience', @level2type=N'COLUMN',@level2name=N'Reason'
GO
/****** 对象:  Table [dbo].[RecordAuthentPresent]    脚本日期: 02/15/2017 16:19:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordAuthentPresent](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[PassPortID] [nvarchar](18) NOT NULL,
	[Compellation] [nvarchar](16) NOT NULL,
	[IpAddress] [nvarchar](15) NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordAuthentPresent_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordAuthentPresent] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'实名认证标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAuthentPresent', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAuthentPresent', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'身份证' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAuthentPresent', @level2type=N'COLUMN',@level2name=N'PassPortID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'真实姓名' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAuthentPresent', @level2type=N'COLUMN',@level2name=N'Compellation'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'IP地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAuthentPresent', @level2type=N'COLUMN',@level2name=N'IpAddress'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'插入日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAuthentPresent', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordUserSendPresent]    脚本日期: 02/15/2017 16:20:20 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordUserSendPresent](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ReceiverUserID] [int] NOT NULL,
	[PropID] [int] NOT NULL,
	[PropCount] [int] NOT NULL,
	[SendTime] [datetime] NOT NULL,
	[ReceiveTime] [datetime] NULL,
	[PropStatus] [smallint] NOT NULL,
	[ClientIP] [nvarchar](15) NOT NULL,
	[ReceiverClientIP] [nvarchar](15) NULL CONSTRAINT [DF_RecordUserSendPresent_ReceiverClientIP]  DEFAULT (' '),
 CONSTRAINT [PK_RecordUserSendPresent] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录信息ID号' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserSendPresent', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送道具方ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserSendPresent', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收赠送方ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserSendPresent', @level2type=N'COLUMN',@level2name=N'ReceiverUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具ID' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserSendPresent', @level2type=N'COLUMN',@level2name=N'PropID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送的道具数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserSendPresent', @level2type=N'COLUMN',@level2name=N'PropCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送道具的时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserSendPresent', @level2type=N'COLUMN',@level2name=N'SendTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接收者 接收道具的时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserSendPresent', @level2type=N'COLUMN',@level2name=N'ReceiveTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 表示道具已赠送，还未被接收。   1表示道具已被接收。' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUserSendPresent', @level2type=N'COLUMN',@level2name=N'PropStatus'
GO
/****** 对象:  Table [dbo].[RecordGrantMember]    脚本日期: 02/15/2017 16:20:01 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordGrantMember](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL CONSTRAINT [DF_RecordGrantMenber_MasterID]  DEFAULT ((0)),
	[ClientIP] [varchar](15) NOT NULL CONSTRAINT [DF_RecordGrantMenber_ClientIP]  DEFAULT ('000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordGrantMenber_CollectDate]  DEFAULT (getdate()),
	[UserID] [int] NOT NULL CONSTRAINT [DF_RecordGrantMenber_UserID]  DEFAULT ((0)),
	[GrantCardType] [int] NOT NULL CONSTRAINT [DF_Table_1_CardType]  DEFAULT ((0)),
	[Reason] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordGrantMenber_Reason]  DEFAULT (''),
	[MemberDays] [int] NOT NULL CONSTRAINT [DF_RecordGrantMember_MemberDays]  DEFAULT ((0)),
 CONSTRAINT [PK_RecordGrantMenber] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantMember', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantMember', @level2type=N'COLUMN',@level2name=N'MasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'客户端IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantMember', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantMember', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantMember', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送的会员卡类别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantMember', @level2type=N'COLUMN',@level2name=N'GrantCardType'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送会员卡原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantMember', @level2type=N'COLUMN',@level2name=N'Reason'
GO
/****** 对象:  Table [dbo].[RecordUseProperty]    脚本日期: 02/15/2017 16:20:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordUseProperty](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[SourceUserID] [int] NOT NULL,
	[TargetUserID] [int] NOT NULL,
	[PropertyID] [int] NOT NULL,
	[PropertyName] [nvarchar](31) NOT NULL,
	[PropertyCount] [int] NOT NULL,
	[LovelinessRcv] [int] NOT NULL CONSTRAINT [DF_RecordUseProperty_LovelinessRcv]  DEFAULT ((0)),
	[LovelinessSend] [int] NOT NULL CONSTRAINT [DF_RecordUseProperty_LovelinessSend]  DEFAULT ((0)),
	[UseResultsGold] [bigint] NOT NULL CONSTRAINT [DF_RecordUseProperty_UseResultsGold]  DEFAULT ((0)),
	[KindID] [int] NOT NULL CONSTRAINT [DF_RecordUseProperty_KindID]  DEFAULT ((0)),
	[ServerID] [int] NOT NULL CONSTRAINT [DF_RecordUseProperty_ServerID]  DEFAULT ((0)),
	[ClientIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordUseProperty_ClinetIP]  DEFAULT (''),
	[UseDate] [datetime] NOT NULL CONSTRAINT [DF_RecordUseProperty_UseDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordUseProperty] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'SourceUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'TargetUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'PropertyID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具名称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'PropertyName'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'道具数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'PropertyCount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'接受魅力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'LovelinessRcv'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'发送魅力' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'LovelinessSend'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用赠送金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'UseResultsGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'使用时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordUseProperty', @level2type=N'COLUMN',@level2name=N'UseDate'
GO
/****** 对象:  Table [dbo].[RecordGrantGameID]    脚本日期: 02/15/2017 16:19:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordGrantGameID](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL,
	[UserID] [int] NOT NULL,
	[CurGameID] [int] NOT NULL,
	[ReGameID] [int] NOT NULL,
	[IDLevel] [int] NOT NULL CONSTRAINT [DF_RecordGrantGameID_IDLevel]  DEFAULT ((0)),
	[ClientIP] [varchar](15) NOT NULL CONSTRAINT [DF_RecordGrantGameID_ClientIP]  DEFAULT ('000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordGrantGameID_CollectDate]  DEFAULT (getdate()),
	[Reason] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_RecordGrantGameID] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameID', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameID', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'原游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameID', @level2type=N'COLUMN',@level2name=N'CurGameID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠予标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameID', @level2type=N'COLUMN',@level2name=N'ReGameID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'ID级别' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameID', @level2type=N'COLUMN',@level2name=N'IDLevel'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠予地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameID', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠予时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantGameID', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordLottery]    脚本日期: 02/15/2017 16:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordLottery](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[ChargeFee] [int] NOT NULL,
	[ItemIndex] [int] NOT NULL CONSTRAINT [DF_RecordLottery_ItemIndex]  DEFAULT ((0)),
	[ItemType] [int] NOT NULL CONSTRAINT [DF_RecordLottery_ItemType]  DEFAULT ((0)),
	[ItemQuota] [int] NOT NULL CONSTRAINT [DF_RecordLottery_ItemQuota]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordLottery_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordLottery] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [IX_RecordLottery_UserID] ON [dbo].[RecordLottery] 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
/****** 对象:  Table [dbo].[RecordPasswdExpend]    脚本日期: 02/15/2017 16:20:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordPasswdExpend](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[OperMasterID] [int] NOT NULL,
	[UserID] [int] NOT NULL CONSTRAINT [DF_RecordPasswdExpend_UserID]  DEFAULT ((0)),
	[ReLogonPasswd] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordPasswdExpend_ReLogonPass]  DEFAULT (N'--'),
	[ReInsurePasswd] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordPasswdExpend_ReInsurePass]  DEFAULT (N'--'),
	[ClientIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordPasswdExpend_ClientIP]  DEFAULT ('000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordPasswdExpend_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordPasswdExpend] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPasswdExpend', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作网管' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPasswdExpend', @level2type=N'COLUMN',@level2name=N'OperMasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPasswdExpend', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'登录密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPasswdExpend', @level2type=N'COLUMN',@level2name=N'ReLogonPasswd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'银行密码' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPasswdExpend', @level2type=N'COLUMN',@level2name=N'ReInsurePasswd'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPasswdExpend', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordPasswdExpend', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordConvertUserMedal]    脚本日期: 02/15/2017 16:19:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordConvertUserMedal](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[CurInsureScore] [bigint] NOT NULL CONSTRAINT [DF_RecordConvertUserMedal_CurInsureScore]  DEFAULT ((0)),
	[CurUserMedal] [int] NOT NULL CONSTRAINT [DF_RecordConvertUserMedal_CurUserMedal]  DEFAULT ((0)),
	[ConvertUserMedal] [int] NOT NULL CONSTRAINT [DF_RecordConvertUserMedal_ConvertUserMedal]  DEFAULT ((0)),
	[ConvertRate] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RecordConvertUserMedal_ConvertRate]  DEFAULT ((0)),
	[IsGamePlaza] [tinyint] NOT NULL CONSTRAINT [DF_RecordConvertUserMedal_IsGamePlaza]  DEFAULT ((0)),
	[ClientIP] [varchar](15) NOT NULL CONSTRAINT [DF_RecordConvertUserMedal_ClientIP]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordConvertUserMedal_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordConvertUserMedal] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertUserMedal', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertUserMedal', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前银行金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertUserMedal', @level2type=N'COLUMN',@level2name=N'CurInsureScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前奖牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertUserMedal', @level2type=N'COLUMN',@level2name=N'CurUserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换奖牌' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertUserMedal', @level2type=N'COLUMN',@level2name=N'ConvertUserMedal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertUserMedal', @level2type=N'COLUMN',@level2name=N'ConvertRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'是否大厅(0:大厅,1:网站)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertUserMedal', @level2type=N'COLUMN',@level2name=N'IsGamePlaza'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertUserMedal', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertUserMedal', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordEveryDayData]    脚本日期: 02/15/2017 16:19:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordEveryDayData](
	[DateID] [int] NOT NULL,
	[UserTotal] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_UserTotal]  DEFAULT ((0)),
	[PayUserTotal] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_PayUserTotal]  DEFAULT ((0)),
	[ActiveUserTotal] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_ActiveUserNum]  DEFAULT ((0)),
	[LossUser] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_LossUser]  DEFAULT ((0)),
	[LossUserTotal] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_LossUserTotal]  DEFAULT ((0)),
	[LossPayUser] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_LossPayUser]  DEFAULT ((0)),
	[LossPayUserTotal] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_LossPayUserTotal]  DEFAULT ((0)),
	[PayTotalAmount] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_PayTotalAmount]  DEFAULT ((0)),
	[PayAmountForCurrency] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_PayAmountForCurrency]  DEFAULT ((0)),
	[GoldTotal] [bigint] NOT NULL CONSTRAINT [DF_RecordEveryDayData_GoldTotal]  DEFAULT ((0)),
	[CurrencyTotal] [bigint] NOT NULL CONSTRAINT [DF_RecordEveryDayData_CurrencyTotal]  DEFAULT ((0)),
	[GameTax] [bigint] NOT NULL CONSTRAINT [DF_RecordEveryDayData_GameTax]  DEFAULT ((0)),
	[GameTaxTotal] [bigint] NOT NULL CONSTRAINT [DF_RecordEveryDayData_GameTaxTotal]  DEFAULT ((0)),
	[BankTax] [bigint] NOT NULL CONSTRAINT [DF_RecordEveryDayData_ThatDayBankTax]  DEFAULT ((0)),
	[Waste] [bigint] NOT NULL CONSTRAINT [DF_RecordEveryDayData_Waste]  DEFAULT ((0)),
	[UserAVGOnlineTime] [int] NOT NULL CONSTRAINT [DF_RecordEveryDayData_UserAVGOnlineTime]  DEFAULT ((0)),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_Table_1_InputDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordEveryDayData_1] PRIMARY KEY CLUSTERED 
(
	[DateID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'UserTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值玩家' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'PayUserTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'活跃用户' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'ActiveUserTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当日流失玩家数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'LossUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户流失总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'LossUserTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当日流失充值玩家数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'LossPayUser'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值用户流失总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'LossPayUserTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'PayTotalAmount'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'充值货币金额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'PayAmountForCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'金币总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'GoldTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平台币总数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'CurrencyTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当日游戏税收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'GameTax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'税收总额' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'GameTaxTotal'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当日银行税收' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'BankTax'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当日损耗' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'Waste'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'平均在线时长' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'UserAVGOnlineTime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'统计时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEveryDayData', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordTask]    脚本日期: 02/15/2017 16:20:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordTask](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[DateID] [int] NOT NULL CONSTRAINT [DF_RecardTask_DateID]  DEFAULT ((0)),
	[UserID] [int] NOT NULL CONSTRAINT [DF_RecardTask_UserID]  DEFAULT ((0)),
	[TaskID] [int] NOT NULL CONSTRAINT [DF_RecardTask_TaskID]  DEFAULT ((0)),
	[AwardGold] [int] NOT NULL,
	[AwardMedal] [int] NOT NULL,
	[InputDate] [datetime] NOT NULL CONSTRAINT [DF_RecordTask_InputDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordTask] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTask', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'日期标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTask', @level2type=N'COLUMN',@level2name=N'DateID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTask', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'任务标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTask', @level2type=N'COLUMN',@level2name=N'TaskID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTask', @level2type=N'COLUMN',@level2name=N'AwardGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'奖励元宝' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordTask', @level2type=N'COLUMN',@level2name=N'AwardMedal'
GO
/****** 对象:  Table [dbo].[RecordAccountsExpend]    脚本日期: 02/15/2017 16:19:35 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordAccountsExpend](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[OperMasterID] [int] NOT NULL CONSTRAINT [DF_RecordAccountsExpend_OperMasterID]  DEFAULT ((0)),
	[UserID] [int] NOT NULL,
	[ReAccounts] [nvarchar](31) NOT NULL,
	[Type] [tinyint] NOT NULL CONSTRAINT [DF_RecordAccountsExpend_Type]  DEFAULT ((0)),
	[ClientIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordAccountsExpend_ClientIP]  DEFAULT (N'000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordAccountsExpend_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordAccountsExpend] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAccountsExpend', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作网管' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAccountsExpend', @level2type=N'COLUMN',@level2name=N'OperMasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAccountsExpend', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史账号或昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAccountsExpend', @level2type=N'COLUMN',@level2name=N'ReAccounts'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'历史记录类型 0:历史账号 1:历史昵称' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAccountsExpend', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAccountsExpend', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'修改日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordAccountsExpend', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordEncashPresent]    脚本日期: 02/15/2017 16:19:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordEncashPresent](
	[UserID] [int] NOT NULL,
	[CurGold] [bigint] NOT NULL,
	[CurPresent] [int] NOT NULL,
	[EncashGold] [int] NOT NULL,
	[EncashPresent] [int] NOT NULL,
	[KindID] [int] NOT NULL,
	[ServerID] [int] NOT NULL,
	[ClientIP] [nvarchar](15) NOT NULL,
	[EncashTime] [datetime] NOT NULL CONSTRAINT [DF_RecordEncashPresent_EncashTime]  DEFAULT (getdate())
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEncashPresent', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前金币数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEncashPresent', @level2type=N'COLUMN',@level2name=N'CurGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前礼物数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEncashPresent', @level2type=N'COLUMN',@level2name=N'CurPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换金币数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEncashPresent', @level2type=N'COLUMN',@level2name=N'EncashGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换礼物数目' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEncashPresent', @level2type=N'COLUMN',@level2name=N'EncashPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'类型标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEncashPresent', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEncashPresent', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'玩家IP' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEncashPresent', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordEncashPresent', @level2type=N'COLUMN',@level2name=N'EncashTime'
GO
/****** 对象:  Table [dbo].[RecordConvertPresent]    脚本日期: 02/15/2017 16:19:43 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordConvertPresent](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL,
	[KindID] [int] NOT NULL CONSTRAINT [DF_RecordConvertPresent_KindID]  DEFAULT ((0)),
	[ServerID] [int] NOT NULL CONSTRAINT [DF_RecordConvertPresent_ServerID]  DEFAULT ((0)),
	[CurInsureScore] [bigint] NOT NULL CONSTRAINT [DF_RecordConvertPresent_CurInsureScore]  DEFAULT ((0)),
	[CurPresent] [int] NOT NULL CONSTRAINT [DF_RecordConvertPresent_CurPresent]  DEFAULT ((0)),
	[ConvertPresent] [int] NOT NULL,
	[ConvertRate] [int] NOT NULL,
	[IsGamePlaza] [tinyint] NOT NULL CONSTRAINT [DF_RecordConvertPresent_IsGamePlaza]  DEFAULT ((0)),
	[ClientIP] [varchar](15) NOT NULL,
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordConvertPresent_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordConvertPresent] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'游戏标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'KindID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'房间标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'ServerID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换前银行' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'CurInsureScore'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换前魅力点' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'CurPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换点数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'ConvertPresent'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换比例' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'ConvertRate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换场所(0:大厅,1:网页)' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'IsGamePlaza'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordConvertPresent', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
/****** 对象:  Table [dbo].[RecordRoomCard]    脚本日期: 02/15/2017 16:20:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordRoomCard](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[SourceUserID] [int] NOT NULL CONSTRAINT [DF_RecordRoomCard_SourceUserID]  DEFAULT ((0)),
	[TargetUserID] [int] NOT NULL CONSTRAINT [DF_RecordRoomCard_TargetUserID]  DEFAULT ((0)),
	[SBeforeCard] [int] NOT NULL CONSTRAINT [DF_RecordRoomCard_SBeforeCard]  DEFAULT ((0)),
	[TBeforeCard] [int] NOT NULL CONSTRAINT [DF_RecordRoomCard_TBeforeCard]  DEFAULT ((0)),
	[RoomCard] [int] NOT NULL CONSTRAINT [DF_RecordRoomCard_RoomCard]  DEFAULT ((0)),
	[TypeID] [tinyint] NOT NULL CONSTRAINT [DF_RecordRoomCard_TypeID]  DEFAULT ((0)),
	[Currency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RecordRoomCard_Currency]  DEFAULT ((0)),
	[Gold] [bigint] NOT NULL CONSTRAINT [DF_RecordRoomCard_Gold]  DEFAULT ((0)),
	[SBeforeCurrency] [decimal](18, 2) NOT NULL CONSTRAINT [DF_RecordRoomCard_SBeforeCurrency]  DEFAULT ((0)),
	[SBeforeGold] [bigint] NOT NULL CONSTRAINT [DF_RecordRoomCard_SBeforeGold]  DEFAULT ((0)),
	[ClientIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordRoomCard_ClientIP]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordRoomCard_CollectDate]  DEFAULT (getdate()),
	[Remarks] [nvarchar](80) NOT NULL CONSTRAINT [DF_RecordRoomCard_Remarks]  DEFAULT (''),
 CONSTRAINT [PK_RecordRoomCard] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'SourceUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'TargetUserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源用户操作前房卡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'SBeforeCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'目标用户操作前房卡' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'TBeforeCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作房卡数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'RoomCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作类型（0、游戏豆购买  1、赠送  2、兑换  3、消耗  4、游戏币购买）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'TypeID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'花费游戏豆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'Currency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'兑换游戏币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'Gold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源用户操作前游戏豆' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'SBeforeCurrency'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'源用户操作前游戏币（身上）' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'SBeforeGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'备注' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordRoomCard', @level2type=N'COLUMN',@level2name=N'Remarks'
GO
/****** 对象:  Table [dbo].[RecordGrantRoomCard]    脚本日期: 02/15/2017 16:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordGrantRoomCard](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL CONSTRAINT [DF_RecordGrantRoomCard_MasterID]  DEFAULT ((0)),
	[ClientIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordGrantRoomCard_ClientIP]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordGrantRoomCard_CollectDate]  DEFAULT (getdate()),
	[UserID] [int] NOT NULL CONSTRAINT [DF_RecordGrantRoomCard_UserID]  DEFAULT ((0)),
	[CurRoomCard] [int] NOT NULL CONSTRAINT [DF_RecordGrantRoomCard_CurRoomCard]  DEFAULT ((0)),
	[AddRoomCard] [int] NOT NULL CONSTRAINT [DF_RecordGrantRoomCard_AddRoomCard]  DEFAULT ((0)),
	[Reason] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordGrantRoomCard_Reason]  DEFAULT (''),
 CONSTRAINT [PK_RecordGrantRoomCard] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantRoomCard', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantRoomCard', @level2type=N'COLUMN',@level2name=N'MasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantRoomCard', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantRoomCard', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantRoomCard', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前房卡数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantRoomCard', @level2type=N'COLUMN',@level2name=N'CurRoomCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送房卡数' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantRoomCard', @level2type=N'COLUMN',@level2name=N'AddRoomCard'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'赠送原因' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantRoomCard', @level2type=N'COLUMN',@level2name=N'Reason'
GO
/****** 对象:  Table [dbo].[RecordGrantTreasure]    脚本日期: 02/15/2017 16:20:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[RecordGrantTreasure](
	[RecordID] [int] IDENTITY(1,1) NOT NULL,
	[MasterID] [int] NOT NULL,
	[ClientIP] [varchar](15) NOT NULL CONSTRAINT [DF_RecordGrantScore_VisitIP]  DEFAULT (N'000.000.000.000'),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordGrantScore_CreateDatetime]  DEFAULT (getdate()),
	[UserID] [int] NOT NULL,
	[CurGold] [bigint] NOT NULL CONSTRAINT [DF_RecordGrantScore_CurScore]  DEFAULT ((0)),
	[AddGold] [bigint] NOT NULL CONSTRAINT [DF_RecordGrantScore_AddScore]  DEFAULT ((0)),
	[Reason] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordGrantScore_Reason]  DEFAULT (N''),
 CONSTRAINT [PK_RecordGrantScore] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'记录标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantTreasure', @level2type=N'COLUMN',@level2name=N'RecordID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'管理员标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantTreasure', @level2type=N'COLUMN',@level2name=N'MasterID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'来访地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantTreasure', @level2type=N'COLUMN',@level2name=N'ClientIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作日期' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantTreasure', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantTreasure', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'当前金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantTreasure', @level2type=N'COLUMN',@level2name=N'CurGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'增加金币' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantTreasure', @level2type=N'COLUMN',@level2name=N'AddGold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'操作理由' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordGrantTreasure', @level2type=N'COLUMN',@level2name=N'Reason'
GO
/****** 对象:  Table [dbo].[RecordBaseEnsure]    脚本日期: 02/15/2017 16:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RecordBaseEnsure](
	[RecordID] [bigint] IDENTITY(1,1) NOT NULL,
	[UserID] [int] NOT NULL CONSTRAINT [DF_RecordBaseEnsure_UserID]  DEFAULT ((0)),
	[Gold] [int] NOT NULL CONSTRAINT [DF_RecordBaseEnsure_Gold]  DEFAULT ((0)),
	[ClinetIP] [nvarchar](15) NOT NULL CONSTRAINT [DF_RecordBaseEnsure_ClinetIP]  DEFAULT (''),
	[ClinetMachine] [nvarchar](32) NOT NULL CONSTRAINT [DF_RecordBaseEnsure_ClinetMachine]  DEFAULT (''),
	[CollectDate] [datetime] NOT NULL CONSTRAINT [DF_RecordBaseEnsure_CollectDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_RecordBaseEnsure] PRIMARY KEY CLUSTERED 
(
	[RecordID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领取用户标识' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBaseEnsure', @level2type=N'COLUMN',@level2name=N'UserID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领取低保值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBaseEnsure', @level2type=N'COLUMN',@level2name=N'Gold'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领取地址' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBaseEnsure', @level2type=N'COLUMN',@level2name=N'ClinetIP'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领取机器' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBaseEnsure', @level2type=N'COLUMN',@level2name=N'ClinetMachine'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'领取时间' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'RecordBaseEnsure', @level2type=N'COLUMN',@level2name=N'CollectDate'
GO
