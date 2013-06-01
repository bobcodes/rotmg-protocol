package jedytoh
{
   import byzany.Qopel;
   import sasacen.Putojopys;
   import kyco.Nun;
   import zanotyv.Tucaduqip;
   import nago.Hol;
   import gag.Gawu;
   import gag.Cub;
   import gag.Myzawob;


   public class Lasavit extends Object
   {
      public function Lasavit() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         return;
      }

      public var language:String;

      public var model:Qopel;

      public var vigev:Putojopys;

      public var cemohoqal:Nun;

      public var zoritu:Tucaduqip;

      public var lawaqefup:Jeveb;

      public var libefobav:Hol;

      public var rurusedi:Gawu;

      public function execute() : void {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.model.lapy(this.language);
         this.vigev.dispatch();
         var _loc1_:Cub = new Cub();
         _loc1_.add(this.zoritu);
         _loc1_.add(new Myzawob(this.lawaqefup));
         _loc1_.add(new Myzawob(this.libefobav));
         this.rurusedi.add(_loc1_);
         _loc1_.start();
         return;
      }
   }

}