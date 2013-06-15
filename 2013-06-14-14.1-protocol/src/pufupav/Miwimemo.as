package pufupav
{
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Qawosiwi;


   public class Miwimemo extends GameObject
   {
      public function Miwimemo() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(null);
         objectId_=hofuvupud();
         budav=false;
         return;
      }

      public static function wumupij(param1:Tajy, param2:GameObject) : Miwimemo {
         var _loc4_:* = true;
         var _loc5_:* = false;
         switch(null)
         {
            case "Healing":
               return new Vyqukop(param2);
            case "Fountain":
               return new FountainEffect(param2);
            case "Gas":
               return new Lyb(param2,param1);
            case "Vent":
               return new VentEffect(param2);
            case "Bubbles":
               return new Foqywi(param2,param1);
            case "XMLEffect":
               return new XMLEffect(param2,param1);
            case "CustomParticles":
               return Bibynohi.zihyhi(param1,param2);
            default:
               return null;
         }
      }

      override public function update(param1:int, param2:int) : Boolean {
         return false;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Qawosiwi, param3:int) : void {
         return;
      }
   }

}