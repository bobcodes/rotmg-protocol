package com.company.assembleegameclient.ui
{
[CLASS1612]   import flash.display.Sprite;
   import com.company.assembleegameclient.game.Tosahafu;
   import com.company.ui.Remyl;
   import pudev.Capitu;
   import __AS3__.vec.Vector;
   import haqakel.Kefyfa;
   import totuhare.Zufi;
   import flash.events.MouseEvent;
   import flash.events.Event;
   import jyz.Cygalusu;
   import flash.filters.DropShadowFilter;
   import kuzycyw.Cymydef;


   public class TradeInventory extends Sprite
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function TradeInventory(param1:Tosahafu, param2:String, param3:Vector.<Cygalusu>, param4:Boolean) {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc5_:* = 0;
         var _loc6_:Cygalusu = null;
         var _loc7_:Zokizep = null;
         this.fykyt=new Vector.<Zokizep>();
         super();
         this.gs_=param1;
         this.bicon=param2;
         this.nameText_=new Remyl(20,11776947,false,0,0);
         this.nameText_.setBold(true);
         this.nameText_.x=0;
         this.nameText_.y=0;
         this.nameText_.text=this.bicon;
         this.nameText_.mojymak();
         this.nameText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.nameText_);
         this.taglineText_=new Capitu().setSize(12).setColor(11776947);
         this.taglineText_.x=0;
         this.taglineText_.y=22;
         this.taglineText_.filters=[new DropShadowFilter(0,0,0)];
         addChild(this.taglineText_);
         _loc5_=0;
         while(_loc5_<Cymydef.nybe+Cymydef.sasusa)
         {
            _loc6_=param3[_loc5_];
            _loc7_=new Zokizep(_loc6_.item_,_loc6_.nyqineb,_loc6_.included_,_loc6_.rapa,_loc5_-3,kuwakap[_loc5_],_loc5_);
            _loc7_.vumeg(this.gs_.map.player_);
            _loc7_.x=int(_loc5_%4)*(Slot.WIDTH+4);
            _loc7_.y=int(_loc5_/4)*(Slot.HEIGHT+4)+46;
            if((param4)&&(_loc6_.nyqineb))
            {
               _loc7_.addEventListener(MouseEvent.MOUSE_DOWN,this.cyg);
            }
            this.fykyt.push(_loc7_);
            addChild(_loc7_);
            _loc5_++;
         }
         return;
      }

      private static const hezakik:Array = [0,0,0,0];

      private static const kuwakap:Array = [[1,0,0,1],hezakik,hezakik,[0,1,1,0],[1,0,0,0],hezakik,hezakik,[0,1,0,0],[0,0,0,1],hezakik,hezakik,[0,0,1,0]];

      public static const hepysomy:int = 0;

      public static const segak:int = 1;

      public static const lerewa:int = 2;

      public static const wenaci:int = 3;

      public var gs_:Tosahafu;

      public var bicon:String;

      private var dabohu:int;

      private var nameText_:Remyl;

      private var taglineText_:Capitu;

      public var fykyt:Vector.<Zokizep>;

      public function vypiqyq() : Vector.<Boolean> {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Vector.<Boolean> = new Vector.<Boolean>();
         var _loc2_:* = 0;
         while(_loc2_<this.fykyt.length)
         {
            _loc1_.push(this.fykyt[_loc2_].included_);
            _loc2_++;
         }
         return _loc1_;
      }

      public function bacovocyz(param1:Vector.<Boolean>) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         while(_loc2_<this.fykyt.length)
         {
            this.fykyt[_loc2_].setIncluded(param1[_loc2_]);
            _loc2_++;
         }
         return;
      }

      public function birygysyn(param1:Vector.<Boolean>) : Boolean {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         while(_loc2_<this.fykyt.length)
         {
            if(param1[_loc2_]!=this.fykyt[_loc2_].included_)
            {
               return false;
            }
            _loc2_++;
         }
         return true;
      }

      public function qapylipe() : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_<this.fykyt.length)
         {
            if(this.fykyt[_loc2_].included_)
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }

      public function bakisa() : int {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 4;
         while(_loc2_<this.fykyt.length)
         {
            if(this.fykyt[_loc2_].isEmpty())
            {
               _loc1_++;
            }
            _loc2_++;
         }
         return _loc1_;
      }

      public function ritoji(param1:int) : void {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = "";
         switch(null)
         {
            case hepysomy:
               this.nameText_.setColor(11776947);
               this.taglineText_.setColor(11776947);
               _loc2_=Kefyfa.nodace;
               break;
            case segak:
               this.nameText_.setColor(16711680);
               this.taglineText_.setColor(16711680);
               _loc2_=Kefyfa.jypu;
               break;
            case lerewa:
               this.nameText_.setColor(9022300);
               this.taglineText_.setColor(9022300);
               _loc2_=Kefyfa.teh;
               break;
            case wenaci:
               this.nameText_.setColor(11776947);
               this.taglineText_.setColor(11776947);
               _loc2_=Kefyfa.politil;
               break;
         }
         this.taglineText_.setStringBuilder(new Zufi().setParams(_loc2_));
         return;
      }

      private function cyg(param1:MouseEvent) : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Zokizep = param1.currentTarget as Zokizep;
         _loc2_.setIncluded(!_loc2_.included_);
         dispatchEvent(new Event(Event.CHANGE));
         return;
      }
   }
[/CLASS]
}