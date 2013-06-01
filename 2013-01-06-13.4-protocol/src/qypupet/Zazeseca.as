package qypupet
{
[CLASS952]   import tinava.Dab;
   import com.company.assembleegameclient.objects.ObjectLibrary;


   public class Zazeseca extends Object
   {
      public function Zazeseca() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      private var qimopipoz:uint;

      private var pevivu:XML;

      public const magoraqo:Dab = new Dab(Zazeseca);

      public var level:int;

      public var points:int;

      public var name:String;

      public var description:String;

      private var cupumovup:Boolean;

      public function set type(param1:uint) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qimopipoz=param1;
         this.pevivu=ObjectLibrary.susozih(this.qimopipoz);
         this.name=this.pevivu.DisplayId;
         this.description=this.pevivu.Description;
         return;
      }

      public function setUnlocked(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.cupumovup=param1;
         return;
      }

      public function hem() : Boolean {
         return this.cupumovup;
      }
   }
[/CLASS]
}