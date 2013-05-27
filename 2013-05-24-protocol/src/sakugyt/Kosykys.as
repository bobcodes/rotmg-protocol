package sakugyt
{
   import flash.display.Sprite;
   import tekoh.Gemanyq;
   import povopito.Jodehozut;
   import tekoh.Zukot;
   import movimet.Lufub;
   import flash.display.DisplayObject;
   import raqu.Hujuhy;
   import raqu.Goq;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.events.MouseEvent;
   import nec.Nara;
   import nec.Zirewe;
   import nec.AppendingLineBuilder;
   import aaa.rotmg.i18n.I18nKeys;
   import flash.text.TextFieldAutoSize;
   import nec.Sire;
   import flash.filters.DropShadowFilter;


   public class Kosykys extends Sprite implements Gemanyq
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Kosykys(param1:int, param2:uint, param3:uint, param4:String, param5:String, param6:int, param7:int, param8:String, param9:String, param10:DisplayObject) {
         var _loc11_:* = false;
         var _loc12_:* = true;
         this.piwawawiw=new Zukot();
         super();
         this.name=param4;
         this.description=param5;
         this.level=param6;
         this.jib=param7;
         this.qizy=param8;
         this.kiwubehy=param9;
         this.nameText_=new Lufub().setSize(param1).setColor(param2);
         this.nameText_.setBold(true);
         this.nameText_.setAutoSize(TextFieldAutoSize.RIGHT);
         this.nameText_.setStringBuilder(new Sire().setParams(param4));
         this.nameText_.x=410;
         this.nameText_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         addChild(this.nameText_);
         if(this.jib!=-1)
         {
            this.kytar=new Lufub().setSize(param1).setColor(param3);
            this.kytar.setBold(true);
            this.kytar.setStringBuilder(new Nara(param8+"0"+" "+param9));
            this.kytar.x=450;
            this.kytar.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
            addChild(this.kytar);
         }
         if(param10!=null)
         {
            this.nov=param10;
            this.nameText_.textChanged.addOnce(this.onTextChanged);
            addChild(this.nov);
         }
         this.piwawawiw.kol(this);
         if(param5)
         {
            this.piwawawiw.tooltip=redoziqy;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static var redoziqy:Jodehozut = new Jodehozut(3552822,10197915,null,"",150);

      public var piwawawiw:Zukot;

      public var description:String;

      public var level:int;

      public var jib:int;

      public var qizy:String;

      public var kiwubehy:String;

      private var startTime_:int = 0;

      private var nameText_:Lufub;

      private var kytar:Lufub;

      private var nov:DisplayObject;

      private function onTextChanged() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.kytar!=null)
         {
            this.nov.x=this.kytar.x+this.kytar.width-4;
            this.nov.y=this.kytar.height/2-this.nov.height/2+2;
         }
         else
         {
            this.nov.x=450;
            this.nov.y=this.nameText_.height/2-this.nov.height/2+2;
         }
         return;
      }

      public function zytije(param1:Hujuhy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.piwawawiw.zytije(param1);
         return;
      }

      public function nivinupo() : Hujuhy {
         return this.piwawawiw.nivinupo();
      }

      public function nuqaqynyp(param1:Goq) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.piwawawiw.nuqaqynyp(param1);
         return;
      }

      public function wab() : Goq {
         return this.piwawawiw.wab();
      }

      public function gibul() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.startTime_=-1000000;
         return;
      }

      private function onAddedToStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.startTime_==0)
         {
            this.startTime_=getTimer();
         }
         addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         return;
      }

      private function onRemovedFromStage(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         return;
      }

      public function onEnterFrame(param1:Event) : void {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         var _loc2_:Number = Math.min(1,(getTimer()-this.startTime_)/500);
         if(this.kytar!=null)
         {
            _loc3_=this.jib*_loc2_;
            this.kytar.setStringBuilder(new Nara(this.qizy+_loc3_.toString()+" "+this.kiwubehy));
            if(this.nov!=null)
            {
               this.nov.x=this.kytar.x+this.kytar.width-4;
               this.nov.y=this.kytar.height/2-this.nov.height/2+2;
            }
         }
         if(_loc2_==1)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      public function onMouseOver(param1:Event) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.description!=null)
         {
            redoziqy.sonydiw(this.fudope());
            stage.addChild(redoziqy);
         }
         return;
      }

      private function fudope() : Zirewe {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc1_.setDelimiter("");
         _loc1_.pushParams(this.description);
         if(this.level>1)
         {
            _loc1_.pushParams(I18nKeys.kuw,{data:" ("});
            _loc1_.pushParams("FameBonus.LevelRequirement",{level:this.level});
            _loc1_.pushParams(I18nKeys.kuw,{data:")"});
         }
         return _loc1_;
      }
   }

}