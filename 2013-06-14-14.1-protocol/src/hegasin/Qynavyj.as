package hegasin
{
   import qypajun.Gahufuz;
   import flash.utils.Dictionary;
   import fol.Fec;
   import fol.Qywokida;
   import qypajun.Byjytydon;


   public class Qynavyj extends Object implements Gahufuz
   {
      public function Qynavyj() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private const zedotug:Dictionary = new Dictionary();

      private const pozujo:Fec = new Pehodi();

      public function map(param1:Byjytydon) : Qywokida {
         return this.zedotug[param1]=(this.zedotug[param1])||(new Qikorum(param1));
      }

      public function ricelira(param1:Byjytydon) : Fec {
         var _loc2_:* = true;
         var _loc3_:* = false;
         return (this.zedotug[param1])||(this.pozujo);
      }
   }

}