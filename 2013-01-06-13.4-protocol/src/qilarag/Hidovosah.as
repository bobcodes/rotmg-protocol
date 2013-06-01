package qilarag
{
[CLASS1331]   import flash.display.Sprite;
   import viky.Wihury;
   import pigeguwo.Mefu;
   import viky.Hoselyfov;
   import pudev.Capitu;
   import flash.display.DisplayObject;
   import dutes.Zevazogo;
   import dutes.Soz;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.events.MouseEvent;
   import totuhare.Javo;
   import totuhare.Qebar;
   import totuhare.AppendingLineBuilder;
   import haqakel.Kefyfa;
   import flash.text.TextFieldAutoSize;
   import totuhare.Zufi;
   import flash.filters.DropShadowFilter;


   public class Hidovosah extends Sprite implements Wihury
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Hidovosah(param1:int, param2:uint, param3:uint, param4:String, param5:String, param6:int, param7:int, param8:String, param9:String, param10:DisplayObject) {
         var _loc11_:* = false;
         var _loc12_:* = true;
         this.tuhucysys=new Hoselyfov();
         super();
         this.name=param4;
         this.description=param5;
         this.level=param6;
         this.dibenojit=param7;
         this.bydapetok=param8;
         this.gyhyni=param9;
         this.nameText_=new Capitu().setSize(param1).setColor(param2);
         this.nameText_.setBold(true);
         this.nameText_.setAutoSize(TextFieldAutoSize.RIGHT);
         this.nameText_.setStringBuilder(new Zufi().setParams(param4));
         this.nameText_.x=410;
         this.nameText_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         addChild(this.nameText_);
         if(this.dibenojit!=-1)
         {
            this.keh=new Capitu().setSize(param1).setColor(param3);
            this.keh.setBold(true);
            this.keh.setStringBuilder(new Javo(param8+"0"+" "+param9));
            this.keh.x=450;
            this.keh.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
            addChild(this.keh);
         }
         if(param10!=null)
         {
            this.qumocy=param10;
            this.nameText_.textChanged.addOnce(this.onTextChanged);
            addChild(this.qumocy);
         }
         this.tuhucysys.mosajo(this);
         if(param5)
         {
            this.tuhucysys.tooltip=dytipehuh;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static var dytipehuh:Mefu = new Mefu(3552822,10197915,null,"",150);

      public var tuhucysys:Hoselyfov;

      public var description:String;

      public var level:int;

      public var dibenojit:int;

      public var bydapetok:String;

      public var gyhyni:String;

      private var startTime_:int = 0;

      private var nameText_:Capitu;

      private var keh:Capitu;

      private var qumocy:DisplayObject;

      private function onTextChanged() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.keh!=null)
         {
            this.qumocy.x=this.keh.x+this.keh.width-4;
            this.qumocy.y=this.keh.height/2-this.qumocy.height/2+2;
         }
         else
         {
            this.qumocy.x=450;
            this.qumocy.y=this.nameText_.height/2-this.qumocy.height/2+2;
         }
         return;
      }

      public function suta(param1:Zevazogo) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.tuhucysys.suta(param1);
         return;
      }

      public function gorycici() : Zevazogo {
         return this.tuhucysys.gorycici();
      }

      public function myt(param1:Soz) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.tuhucysys.myt(param1);
         return;
      }

      public function kodyqigiv() : Soz {
         return this.tuhucysys.kodyqigiv();
      }

      public function nesel() : void {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         var _loc2_:Number = Math.min(1,(getTimer()-this.startTime_)/500);
         if(this.keh!=null)
         {
            _loc3_=this.dibenojit*_loc2_;
            this.keh.setStringBuilder(new Javo(this.bydapetok+_loc3_.toString()+" "+this.gyhyni));
            if(this.qumocy!=null)
            {
               this.qumocy.x=this.keh.x+this.keh.width-4;
               this.qumocy.y=this.keh.height/2-this.qumocy.height/2+2;
            }
         }
         if(_loc2_==1)
         {
            removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         return;
      }

      public function onMouseOver(param1:Event) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(this.description!=null)
         {
            dytipehuh.rike(this.wyvu());
            stage.addChild(dytipehuh);
         }
         return;
      }

      private function wyvu() : Qebar {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc1_.setDelimiter("");
         _loc1_.pushParams(this.description);
         if(this.level>1)
         {
            _loc1_.pushParams(Kefyfa.kemodanuf,{data:" ("});
            _loc1_.pushParams("FameBonus.LevelRequirement",{level:this.level});
            _loc1_.pushParams(Kefyfa.kemodanuf,{data:")"});
         }
         return _loc1_;
      }
   }
[/CLASS]
}