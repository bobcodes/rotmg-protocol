package com.company.assembleegameclient.objects
{
   import com.company.assembleegameclient.map.Map;
   import com.company.util.PointUtil;
   import vozireni.Pozunubu;
   import vaqob.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import suko.Tynefuti;


   public class Container extends GameObject implements Putafyhil
   {
      public function Container(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         tar=true;
         this.pyhorucuv=param1.hasOwnProperty("Loot");
         this.ownerId_=-1;
         return;
      }

      public var pyhorucuv:Boolean;

      public var ownerId_:int;

      public function tufoc(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ownerId_=param1;
         tar=this.ownerId_<0||(this.foq());
         return;
      }

      public function foq() : Boolean {
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
         var _loc4_:Number = PointUtil.picetyl(map_.player_.x_,map_.player_.y_,param2,param3);
         if((this.pyhorucuv)&&_loc4_<10)
         {
            Pozunubu.play("loot_appears");
         }
         return true;
      }

      public function nokociqoc(param1:GameSprite) : Panel {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Player = (param1)&&(param1.map)?param1.map.player_:null;
         var _loc3_:Tynefuti = new Tynefuti(this,_loc2_);
         return _loc3_;
      }
   }

}