package noniq
{
   import mavew.Qyryl;
   import com.company.ui.Vovoj;
   import flash.filters.DropShadowFilter;


   public class Botuq extends Qyryl
   {
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
      }

      public function Botuq(param1:XML) {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:XML = null;
         super(3552822,1,10197915,1,true);
         this.tob=new Vovoj(16,16777215,false,menuniwo-4,0);
         this.tob.setBold(true);
         this.tob.wordWrap=true;
         this.tob.text=String(param1.@id);
         this.tob.jacuf();
         this.tob.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.tob.x=0;
         this.tob.y=0;
         addChild(this.tob);
         var _loc2_:* = "";
         if(param1.hasOwnProperty("Group"))
         {
            _loc2_=_loc2_+("Group: "+param1.Group+"\n");
         }
         if(param1.hasOwnProperty("Static"))
         {
            _loc2_=_loc2_+"Static\n";
         }
         if(param1.hasOwnProperty("Enemy"))
         {
            _loc2_=_loc2_+"Enemy\n";
            if(param1.hasOwnProperty("MaxHitPoints"))
            {
               _loc2_=_loc2_+("MaxHitPoints: "+param1.MaxHitPoints+"\n");
            }
            if(param1.hasOwnProperty("Defense"))
            {
               _loc2_=_loc2_+("Defense: "+param1.Defense+"\n");
            }
         }
         if(param1.hasOwnProperty("God"))
         {
            _loc2_=_loc2_+"God\n";
         }
         if(param1.hasOwnProperty("Quest"))
         {
            _loc2_=_loc2_+"Quest\n";
         }
         if(param1.hasOwnProperty("Hero"))
         {
            _loc2_=_loc2_+"Hero\n";
         }
         if(param1.hasOwnProperty("Encounter"))
         {
            _loc2_=_loc2_+"Encounter\n";
         }
         if(param1.hasOwnProperty("Level"))
         {
            _loc2_=_loc2_+("Level: "+param1.Level+"\n");
         }
         if(param1.hasOwnProperty("Terrain"))
         {
            _loc2_=_loc2_+("Terrain: "+param1.Terrain+"\n");
         }
         for each (_loc3_ in param1.Projectile)
         {
            _loc2_=_loc2_+("Projectile "+_loc3_.@id+": "+_loc3_.ObjectId+"\n"+"\tDamage: "+_loc3_.Damage+"\n"+"\tSpeed: "+_loc3_.Speed+"\n");
            if(_loc3_.hasOwnProperty("PassesCover"))
            {
               _loc2_=_loc2_+"\tPassesCover\n";
            }
            if(_loc3_.hasOwnProperty("MultiHit"))
            {
               _loc2_=_loc2_+"\tMultiHit\n";
            }
            if(_loc3_.hasOwnProperty("ConditionEffect"))
            {
               _loc2_=_loc2_+("\t"+_loc3_.ConditionEffect+" for "+_loc3_.ConditionEffect.@duration+" secs\n");
            }
            if(_loc3_.hasOwnProperty("Parametric"))
            {
               _loc2_=_loc2_+"\tParametric\n";
            }
         }
         this.ziw=new Vovoj(14,11776947,false,menuniwo,0);
         this.ziw.wordWrap=true;
         this.ziw.text=String(_loc2_);
         this.ziw.jacuf();
         this.ziw.filters=[new DropShadowFilter(0,0,0,0.5,12,12)];
         this.ziw.x=0;
         this.ziw.y=this.tob.height+2;
         addChild(this.ziw);
         return;
      }

      private static const menuniwo:int = 180;

      private var tob:Vovoj;

      private var ziw:Vovoj;
   }

}