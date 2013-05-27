package moryzis
{
   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Wypyj;


   public class Jil extends GameObject
   {
      public function Jil() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super(null);
         objectId_=mej();
         kyjon=false;
         return;
      }

      public static function qecuri(param1:Baly, param2:GameObject) : Jil {
         var _loc4_:* = false;
         var _loc5_:* = true;
         switch(param1.id)
         {
            case "Healing":
               return new Wil(param2);
            case "Fountain":
               return new FountainEffect(param2);
            case "Gas":
               return new Ceqoha(param2,param1);
            case "Vent":
               return new VentEffect(param2);
            case "Bubbles":
               return new Tomu(param2,param1);
            case "XMLEffect":
               return new XMLEffect(param2,param1);
            case "CustomParticles":
               return Wezy.hokum(param1,param2);
            default:
               return null;
         }
      }

      override public function update(param1:int, param2:int) : Boolean {
         return false;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Wypyj, param3:int) : void {
         return;
      }
   }

}