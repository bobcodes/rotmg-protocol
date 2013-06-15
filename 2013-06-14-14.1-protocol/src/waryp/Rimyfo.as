package waryp
{
   import flash.display.Sprite;
   import gafuvy.Pywafejer;
   import mavew.Qyrola;
   import gafuvy.Qyvuw;
   import hivysif.Guzowoja;
   import flash.display.DisplayObject;
   import pomujukir.Cirumy;
   import pomujukir.Boqutujy;
   import flash.events.Event;
   import flash.utils.getTimer;
   import flash.events.MouseEvent;
   import jediwip.Vofezuzy;
   import jediwip.Tunyhazo;
   import jediwip.AppendingLineBuilder;
   import komi.Vibemod;
   import flash.text.TextFieldAutoSize;
   import jediwip.Kybidu;
   import flash.filters.DropShadowFilter;


   public class Rimyfo extends Sprite implements Pywafejer
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function Rimyfo(param1:int, param2:uint, param3:uint, param4:String, param5:String, param6:int, param7:int, param8:String, param9:String, param10:DisplayObject) {
         var _loc11_:* = true;
         var _loc12_:* = false;
         this.debamipop=new Qyvuw();
         super();
         this.name=param4;
         this.description=param5;
         this.level=param6;
         this.jafy=param7;
         this.pinatyr=param8;
         this.huvokelo=param9;
         this.nameText_=new Guzowoja().setSize(param1).setColor(param2);
         this.nameText_.setBold(true);
         this.nameText_.setAutoSize(TextFieldAutoSize.RIGHT);
         this.nameText_.setStringBuilder(new Kybidu().setParams(param4));
         this.nameText_.x=410;
         this.nameText_.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
         addChild(this.nameText_);
         if(this.jafy!=-1)
         {
            this.wokityw=new Guzowoja().setSize(param1).setColor(param3);
            this.wokityw.setBold(true);
            this.wokityw.setStringBuilder(new Vofezuzy(param8+"0"+" "+param9));
            this.wokityw.x=450;
            this.wokityw.filters=[new DropShadowFilter(0,0,0,1,4,4,2)];
            addChild(this.wokityw);
         }
         if(param10!=null)
         {
            this.zepyt=param10;
            this.nameText_.textChanged.addOnce(this.onTextChanged);
            addChild(this.zepyt);
         }
         this.debamipop.lubec(this);
         if(param5)
         {
            this.debamipop.tooltip=jojuloba;
         }
         addEventListener(Event.ADDED_TO_STAGE,this.onAddedToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
         return;
      }

      public static var jojuloba:Qyrola = new Qyrola(3552822,10197915,null,"",150);

      public var debamipop:Qyvuw;

      public var description:String;

      public var level:int;

      public var jafy:int;

      public var pinatyr:String;

      public var huvokelo:String;

      private var startTime_:int = 0;

      private var nameText_:Guzowoja;

      private var wokityw:Guzowoja;

      private var zepyt:DisplayObject;

      private function onTextChanged() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.wokityw!=null)
         {
            this.zepyt.x=this.wokityw.x+this.wokityw.width-4;
            this.zepyt.y=this.wokityw.height/2-this.zepyt.height/2+2;
         }
         else
         {
            this.zepyt.x=450;
            this.zepyt.y=this.nameText_.height/2-this.zepyt.height/2+2;
         }
         return;
      }

      public function sijobalyv(param1:Cirumy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.debamipop.sijobalyv(param1);
         return;
      }

      public function fifelap() : Cirumy {
         return this.debamipop.fifelap();
      }

      public function labyvofo(param1:Boqutujy) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.debamipop.labyvofo(param1);
         return;
      }

      public function wuducocac() : Boqutujy {
         return this.debamipop.wuducocac();
      }

      public function wupobalu() : void {
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         removeEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         return;
      }

      public function onEnterFrame(param1:Event) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         var _loc2_:Number = Math.min(1,(getTimer()-this.startTime_)/500);
         if(this.wokityw!=null)
         {
            _loc3_=this.jafy*_loc2_;
            this.wokityw.setStringBuilder(new Vofezuzy(this.pinatyr+_loc3_.toString()+" "+this.huvokelo));
            if(this.zepyt!=null)
            {
               this.zepyt.x=this.wokityw.x+this.wokityw.width-4;
               this.zepyt.y=this.wokityw.height/2-this.zepyt.height/2+2;
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
            jojuloba.kenadyb(this.pujuduso());
            stage.addChild(jojuloba);
         }
         return;
      }

      private function pujuduso() : Tunyhazo {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:AppendingLineBuilder = new AppendingLineBuilder();
         _loc1_.setDelimiter("");
         _loc1_.pushParams(this.description);
         if(this.level>1)
         {
            _loc1_.pushParams(Vibemod.benuwi,{data:" ("});
            _loc1_.pushParams("FameBonus.LevelRequirement",{level:this.level});
            _loc1_.pushParams(Vibemod.benuwi,{data:")"});
         }
         return _loc1_;
      }
   }

}