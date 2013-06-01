package com.company.assembleegameclient.objects
{
[CLASS1064]   import com.company.assembleegameclient.map.Map;
   import com.company.util.PointUtil;
   import gawulu.Cuqicyh;
   import warude.Panel;
   import com.company.assembleegameclient.game.GameSprite;
   import ferozosyf.Licuboter;


   public class Container extends GameObject implements Gofa
   {
      public function Container(param1:XML) {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super(param1);
         wywag=true;
         this.resedali=param1.hasOwnProperty("Loot");
         this.ownerId_=-1;
         return;
      }

      public var resedali:Boolean;

      public var ownerId_:int;

      public function jutujivab(param1:int) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.ownerId_=param1;
         wywag=this.ownerId_<0||(this.bavyto());
         return;
      }

      public function bavyto() : Boolean {
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
         var _loc4_:Number = PointUtil.kijuvaq(map_.player_.x_,map_.player_.y_,param2,param3);
         if((this.resedali)&&_loc4_<10)
         {
            Cuqicyh.play("loot_appears");
         }
         return true;
      }

      public function bukywijej(param1:GameSprite) : Panel {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Player = (param1)&&(param1.map)?param1.map.player_:null;
         var _loc3_:Licuboter = new Licuboter(this,_loc2_);
         return _loc3_;
      }
   }
[/CLASS]
}