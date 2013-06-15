package com.company.assembleegameclient.objects
{
   import com.company.assembleegameclient.map.Map;
   import com.company.util.PointUtil;
   import dorepoji.Kadido;
   import fytalis.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import copano.Gykafuzi;


   public class Container extends GameObject implements Gim
   {
      public function Container(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         bura=true;
         this.tinesi=param1.hasOwnProperty("Loot");
         this.ownerId_=-1;
         return;
      }

      public var tinesi:Boolean;

      public var ownerId_:int;

      public function vepycuju(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.ownerId_=param1;
         bura=this.ownerId_<0||(this.dicik());
         return;
      }

      public function dicik() : Boolean {
         return map_.player_.accountId_==this.ownerId_;
      }

      override public function addTo(param1:Map, param2:Number, param3:Number) : Boolean {
         var _loc5_:* = true;
         var _loc6_:* = false;
         if(!super.addTo(param1,param2,param3))
         {
            return false;
         }
         if(map_.player_==null)
         {
            return true;
         }
         var _loc4_:Number = PointUtil.nybomof(map_.player_.x_,map_.player_.y_,param2,param3);
         if((this.tinesi)&&_loc4_<10)
         {
            Kadido.play("loot_appears");
         }
         return true;
      }

      public function getPanel(param1:GameSprite) : Panel {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Player = (param1)&&(param1.map)?param1.map.player_:null;
         var _loc3_:Gykafuzi = new Gykafuzi(this,_loc2_);
         return _loc3_;
      }
   }

}