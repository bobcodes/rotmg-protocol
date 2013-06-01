package mejowozy
{
[CLASS1398]   import com.company.assembleegameclient.objects.GameObject;
   import __AS3__.vec.Vector;
   import flash.display.IGraphicsData;
   import com.company.assembleegameclient.map.Fot;


   public class Ryf extends GameObject
   {
      public function Ryf() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super(null);
         objectId_=gyhubin();
         tovemamic=false;
         return;
      }

      public static function mipuzepe(param1:Roneg, param2:GameObject) : Ryf {
         var _loc4_:* = false;
         var _loc5_:* = true;
         switch(null)
         {
            case "Healing":
               return new Sur(param2);
            case "Fountain":
               return new FountainEffect(param2);
            case "Gas":
               return new Qod(param2,param1);
            case "Vent":
               return new VentEffect(param2);
            case "Bubbles":
               return new Tufyqowyd(param2,param1);
            case "XMLEffect":
               return new XMLEffect(param2,param1);
            case "CustomParticles":
               return Cikazyj.gabamogy(param1,param2);
            default:
               return null;
         }
      }

      override public function update(param1:int, param2:int) : Boolean {
         return false;
      }

      override public function draw(param1:Vector.<IGraphicsData>, param2:Fot, param3:int) : void {
         return;
      }
   }
[/CLASS]
}