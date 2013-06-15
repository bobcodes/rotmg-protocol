package fanij
{
   import mukyrosu.Qanyduk;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Kyruha extends Object
   {
      public function Kyruha() {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         return;
      }

      private var vite:uint;

      private var cyhy:XML;

      public const nuzum:Qanyduk = new Qanyduk(Kyruha);

      public var level:int;

      public var points:int;

      public var name:String;

      public var description:String;

      private var hyho:Boolean;

      public function set type(param1:uint) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.vite=param1;
         this.cyhy=ObjectLibrary.zas(this.vite);
         this.name=this.cyhy.DisplayId;
         this.description=this.cyhy.Description;
         return;
      }

      public function setUnlocked(param1:Boolean) : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.hyho=param1;
         return;
      }

      public function cetosyc() : Boolean {
         return this.hyho;
      }
   }

}