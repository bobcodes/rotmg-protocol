package zoroc
{
   import tulunyno.Hugyqufyq;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Vugusyqik extends Object
   {
      public function Vugusyqik() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var cuwiqytid:uint;

      private var bowe:XML;

      public const tygyfizop:Hugyqufyq = new Hugyqufyq(Vugusyqik);

      public var level:int;

      public var points:int;

      public var name:String;

      public var description:String;

      private var byzizun:Boolean;

      public function set type(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.cuwiqytid=param1;
         this.bowe=ObjectLibrary.quq(this.cuwiqytid);
         this.name=this.bowe.DisplayId;
         this.description=this.bowe.Description;
         return;
      }

      public function setUnlocked(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.byzizun=param1;
         return;
      }

      public function sejudejol() : Boolean {
         return this.byzizun;
      }
   }

}