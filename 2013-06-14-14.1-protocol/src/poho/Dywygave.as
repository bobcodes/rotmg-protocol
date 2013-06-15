package poho
{
   import mukyrosu.Qanyduk;
   import __AS3__.vec.Vector;


   public class Dywygave extends Object
   {
      public function Dywygave() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public const selected:Qanyduk = new Qanyduk(Dywygave);

      public var id:int;

      public var name:String;

      public var description:String;

      public var siv:String;

      public var sodyrav:String;

      public var puhiwu:Number;

      public var jek:Vector.<int>;

      public var honike:Vector.<int>;

      public var zelybokuc:Zupofecad;

      public var tofaruki:Zupofecad;

      public var attack:Zupofecad;

      public var defense:Zupofecad;

      public var speed:Zupofecad;

      public var dexterity:Zupofecad;

      public var gunuwiqas:Zupofecad;

      public var gikijegep:Zupofecad;

      public var unlockCost:int;

      private var gimi:int;

      private var kami:Boolean;

      public const johevad:Vector.<Wyq> = new Vector.<Wyq>(0);

      public const sybiwu:Wumyziju = new Wumyziju();

      public function cosupeso() : Boolean {
         return this.kami;
      }

      public function gowek(param1:Boolean) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.kami!=param1)
         {
            this.kami=param1;
         }
         return;
      }

      public function qepev() : int {
         return this.gimi;
      }

      public function cuwe(param1:int) : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.gimi=param1;
         this.sybiwu.vijyqyse(this.gimi);
         return;
      }
   }

}