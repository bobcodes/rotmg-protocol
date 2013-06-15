package wohy
{
   import wahyqise.Tuco;
   import fanij.Namejaja;
   import poho.Kyhy;
   import kabam.rotmg.assets.services.Bytedif;
   import mukyrosu.Qanyduk;
   import poho.Pom;


   public class Segeqofi extends Object
   {
      public function Segeqofi() {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.vegyq=new Caki();
         super();
         this.clear();
         return;
      }

      public var nuzomit:Tuco;

      public var buguzunag:Namejaja;

      public var jopyza:Kyhy;

      public var factory:Bytedif;

      public var lulo:Boolean = false;

      public var vegyq:Caki;

      public const hilubahe:Qanyduk = new Qanyduk();

      public function clear() : void {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.lulo=false;
         this.vegyq.pig=0;
         this.vegyq.rygy=-1;
         return;
      }

      public function lewy() : void {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(this.lulo)
         {
            this.lulo=false;
         }
         else
         {
            this.vegyq.pig++;
            this.hilubahe.dispatch();
         }
         return;
      }

      public function debipihu() : Boolean {
         var _loc1_:* = false;
         var _loc2_:* = true;
         return !(this.vegyq.rygy==-1);
      }

      public function sojyw() : void {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.clear();
         this.vegyq.name=this.nuzomit.player.name_;
         var _loc1_:Pom = this.jopyza.gug(this.nuzomit.player.objectType_).sybiwu.vobydozid(this.nuzomit.player.cagibyg);
         this.vegyq.diry=this.factory.makeIcon(_loc1_.fegotu,100,this.nuzomit.player.getTex1(),this.nuzomit.player.getTex2());
         this.vegyq.pet=this.buguzunag.tigosulo();
         this.vegyq.guildName=this.nuzomit.player.guildName_;
         this.vegyq.qogaze=this.nuzomit.player.guildRank_;
         this.vegyq.jek=this.nuzomit.player.bizysuhy.concat();
         this.vegyq.monyn=this.nuzomit.player.zosig.concat();
         return;
      }
   }

}