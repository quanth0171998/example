export const formatPlate = (plate)=>{
  
    let result = "";
    if(plate != undefined | plate != null){
        result += plate[0] + plate[1] + "-" + plate[2] + plate[3] +" " + plate[4] + plate[5] + plate[6]
    if(plate.length === 8){
        result+=plate[7]
    }
    else{
        result+="."+plate[7]+plate[8]
    }
    }
    return result.toUpperCase();
}