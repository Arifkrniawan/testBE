// Soal nomor 1

let num = [];

const totalArray = (N) => {
  for (i = 1; num.length < N; i++) {
    if (i % 3 === 0 && i % 7 === 0) {
      num.push("Z");
    } else if (i % 3 === 0) {
      num.push(i);
    } else if (i % 7 === 0) {
      num.push(i);
    }
  }
  return num;
};

const N = 13;
console.log(totalArray(N));

// Soal Nomor 2

const paragraf =
  "Berikut adalah kisah sang gajah. Sang gajah memiliki teman serigala bernama DoeSang. Gajah sering dibela oleh serigala ketika harimau mendekati gajah";
let paragrafLC = paragraf.toLowerCase();

const matchesParagraf = paragrafLC.match(/sang gajah|serigala|harimau/g);
console.log(matchesParagraf.join(" - "));

// Soal Nomor 3

const password = (passwordCheck) => {
  if (passwordCheck.length < 8) {
    return "Kata sandi minimal 8 karakter";
  }
  if (passwordCheck.length > 32) {
    return "Kata sandi maksimal 32 karakter";
  }
  if (/^\d/.test(passwordCheck)) {
    return "Karakter awal tidak boleh angka";
  }
  if (!/\d/.test(passwordCheck)) {
    return "Harus memiliki angka";
  }
  if (!/[a-z]/.test(passwordCheck) || !/[A-Z]/.test(passwordCheck)) {
    return "Harus memiliki huruf kapital dan huruf kecil";
  }
  return "Kata sandi valid";
};

console.log(password("5andiwara"));
console.log(password("sandiwar4"));
console.log(password("Sandiwar4"));

// Soal nomor 4

function bilanganCacah(arr) {
  arr.sort((a, b) => a - b);
  ref = {};

  let bilanganAwal = arr[0];

  for (const value of arr) {
    if (value > bilanganAwal) continue;
    ref[value] = true;
    while (ref[bilanganAwal]) bilanganAwal++;
  }

  return bilanganAwal;
}

console.log(bilanganCacah([5, 2, 8, 4, 3, 10]));
console.log(bilanganCacah([2, 3, 4, 6]));
console.log(bilanganCacah([8, 6, 7, 12]));

// Soal nomor 5

const n = 3;
let output0 = "";

for (let i = 0; i < n; i++) {
  for (let i = 0; i < n; i++) {
    output0 += "X";
  }
  output0 += "\n";
}

const o = 2;
let output1 = "";
if (o % 2 !== 0) {
  for (let i = 0; i < o; i++) {
    output1 += "X";
  }
  output1 += "\n";
} else if (o % 2 === 0) {
  output1 = "Harus bilangan ganjil";
}

const p = 5;
let output2 = "";

for (let i = 0; i < p; i++) {
  for (let j = 0; j < p; j++) {
    if (
      i === 0 ||
      i === p - 1 ||
      j === 0 ||
      j === p - 1 ||
      (i === Math.floor(p / 2) && j === Math.floor(p / 2)) ||
      (i === 1 && j === p - 2) ||
      (i === p - 2 && j === 1)
    ) {
      output2 += "X";
    } else {
      output2 += "O";
    }
  }
  output2 += "\n";
}

const q = 7;
let output3 = "";

for (let i = 0; i < q; i++) {
  for (let j = 0; j < q; j++) {
    if (
      i === 0 ||
      i === q - 1 ||
      (i === 1 && j === q - 2) ||
      (i === 2 && j === q - 3) ||
      (i === Math.floor(q / 2) && j === Math.floor(q / 2)) ||
      (i === 4 && j === 2) ||
      (i === q - 2 && j === 1) ||
      j === 0 ||
      j === q - 1
    ) {
      output3 += "X";
    } else {
      output3 += "O";
    }
  }
  output3 += "\n";
}

console.log(output0);
console.log(output1);
console.log(output2);
console.log(output3);
