package peciryf
{
   import dopumitud.Lufanon;
   import gag.Gawu;
   import wegyluke.Cowymute;
   import komawowag.Becepog;
   import gag.Cub;
   import gag.Myzawob;


   public class Pijuso extends Object
   {
      public function Pijuso() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var bunumyzad:Lufanon;

      public var rurusedi:Gawu;

      public var tusagecu:Cowymute;

      public var qiqely:Becepog;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.qiqely.debug("execute");
         var _loc1_:Cub = new Cub();
         _loc1_.add(this.bunumyzad);
         _loc1_.add(new Myzawob(this.tusagecu));
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}