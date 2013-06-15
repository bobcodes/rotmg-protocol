package com.company.assembleegameclient.ui
{
   import flash.display.Sprite;
   import com.company.assembleegameclient.game.Pajemiz;
   import com.company.ui.Vovoj;
   import hivysif.Guzowoja;
   import __AS3__.vec.Vector;
   import komi.Vibemod;
   import jediwip.Kybidu;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import dasefezy.Siluw;
   import flash.filters.DropShadowFilter;
   import pilage.Patale;


   public class TradeInventory extends Sprite
   {
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
      }

      public function TradeInventory(param1:Pajemiz, param2:String, param3:Vector.<Siluw>, param4:Boolean) {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc5_:* = 0;
         var _loc6_:Siluw = null;
         var _loc7_:Fal = null;
         this.mil=new Vector.<Fal>();
         super();
         this.gs_=param1;
         this.sotilehip=param2;
         this.nameText_=new Vovoj(20,11776947,false,0,0);
         this.nameText_.setBold(true);
         this.nameText_.x=0;
         this.nameText_.y=0;
         this.nameText_.text=this.sotilehip;
         this.nameText_.dog();
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.taglineText_=new Guzowoja().setSize(12).setColor(11776947);
         this.taglineText_.x=0;
         this.taglineText_.y=22;
         this.taglineText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.taglineText_);
         _loc5_=0;
         while(_loc5_<Patale.hunyrigy+Patale.wiwydu)
         {
            _loc6_=param3[_loc5_];
            _loc7_=new Fal(_loc6_.item_,_loc6_.jug,_loc6_.included_,_loc6_.ququp,_loc5_-3,bowyc[_loc5_],_loc5_);
            _loc7_.bedyl(this.gs_.map.player_);
            _loc7_.x=int(_loc5_%4)*(Slot.WIDTH+4);
            _loc7_.y=int(_loc5_/4)*(Slot.HEIGHT+4)+46;
            if((param4)&&(_loc6_.jug))
            {
               _loc7_.addEventListener(MouseEvent.MOUSE_DOWN,this.vyvyf);
            }
            this.mil.push(_loc7_);
            addChild(_loc7_);
            _loc5_++;
         }
         return;
      }

      private static const fydiw:Array = [0,0,0,0];

      private static const bowyc:Array = [[1,0,0,1],fydiw,fydiw,[0,1,1,0],[1,0,0,0],fydiw,fydiw,[0,1,0,0],[0,0,0,1],fydiw,fydiw,[0,0,1,0]];

      public static const zozuwaw:int = 0;

      public static const wihasuga:int = 1;

      public static const dojopico:int = 2;

      public static const fawy:int = 3;

      public var gs_:Pajemiz;

      public var sotilehip:String;

      private var dok:int;

      private var nameText_:Vovoj;

      private var taglineText_:Guzowoja;

      public var mil:Vector.<Fal>;

      public function qycosac() : Vector.<Boolean> {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Vector.<Boolean> = new Vector.<Boolean>();
         var _loc2_:* = 0;
         while(_loc2_<this.mil.length)
         {
            _loc1_.push(this.mil[_loc2_].included_);
            _loc2_++;
         }
         return _loc1_;
      }

      public function denihuju(param1:Vector.<Boolean>) : void {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<this.mil.length)
         {
            this.mil[_loc2_].setIncluded(param1[_loc2_]);
            _loc2_++;
         }
         return;
      }

      public function gobose(param1:Vector.<Boolean>) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<this.mil.length)
         {
            if(param1[_loc2_]!=this.mil[_loc2_].included_)
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }

      public function bycuma() : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<this.mil.length)
         {
            if(this.mil[_loc2_].included_)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }

      public function rok() : int {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         var _loc2_:* = 4;
         while(_loc2_<this.mil.length)
         {
            if(this.mil[_loc2_].isEmpty())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }

      public function dezylihy(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = "";
         switch(null)
         {
            case zozuwaw:
               this.nameText_.setColor(11776947);
               this.taglineText_.setColor(11776947);
               _loc2_=Vibemod.pymagyd;
               break;
            case wihasuga:
               this.nameText_.setColor(16711680);
               this.taglineText_.setColor(16711680);
               _loc2_=Vibemod.liduk;
               break;
            case dojopico:
               this.nameText_.setColor(9022300);
               this.taglineText_.setColor(9022300);
               _loc2_=Vibemod.zugywuq;
               break;
            case fawy:
               this.nameText_.setColor(11776947);
               this.taglineText_.setColor(11776947);
               _loc2_=Vibemod.cufucypu;
               break;
         }
         this.taglineText_.setStringBuilder(new Kybidu().setParams(_loc2_));
         return;
      }

      private function vyvyf(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Fal = param1.currentTarget as Fal;
         _loc2_.setIncluded(!_loc2_.included_);
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }
   }

}