# User Story Title  
_(Ex. Rotation automatique des mots de passe root)_

---
## 1. Résumé / Contexte
## 2. Objectif
Afin de : En tant que : Je veux 
## 3. Portée (Scope)
3.5 Hors portée
## 4. Critères d’acceptation (ACs)
## 5. Contraintes techniques
## 6. Dépendances
## 7. Données de test / Données d’entrée
## 8. Documentation attendue
## 9. Risques ou impacts
## 10. Notes / Annexes
## Liens et ressources 

| Critère      | Signification       | Question de vérification                         |
|--------------|---------------------|--------------------------------------------------|
| I - Indépendante | Déployable seule   | Bloque-t-elle d’autres stories ?                 |
| N - Négociable   | Flexible           | Le besoin est-il figé ou ouvert à discussion ?   |
| V - Valuable     | Apporte de la valeur | Impacte-t-elle la sécurité ou la conformité ?   |
| E - Estimable    | Évaluable          | L’équipe peut-elle l’estimer techniquement ?     |
| S - Small        | Petite              | Est-elle réalisable en moins d’un Sprint ?       |
| T - Testable     | Testable            | Peut-on vérifier le résultat via logs ou UI ?    |



## 1. Résumé / Contexte  
Brève explication du besoin métier ou technique.  
Pourquoi cette fonctionnalité est-elle demandée ? Quel risque ou objectif couvre-t-elle ?  

_Ex. Pour répondre aux exigences de conformité ISO 27001, les comptes root doivent être régulièrement réinitialisés._

---

## 2. Objectif métier (But)  
**En tant que** : rôle/persona (ex. administrateur PAM)  
**Je veux** : action (ex. automatiser la rotation)  
**Afin de** : objectif (ex. limiter le risque de compromission persistante)  

---

## 3. Portée (Scope)  
Définir ce qui est **inclus** et ce qui est **hors-scope**.  
- Comptes concernés  
- Coffres ciblés  
- Environnements (Prod / QA)  
- Technologies ou intégrations concernées  

### Hors Scope
- Blabla 

---

## 4. Critères d’acceptation (ACs)

- [ ] Le mot de passe est réinitialisé automatiquement toutes les 24 heures  
- [ ] Un log est généré et visible dans l’audit trail  
- [ ] En cas d’échec, une alerte est déclenchée dans Splunk  
- [ ] L’ancien mot de passe n’est plus utilisable  
- [ ] L’action est testable en environnement QA

---

## 5. Contraintes techniques / règles métier

- Utilisation obligatoire du plugin CPM v10  
- Rotation seulement en dehors des heures ouvrées  
- Ne pas notifier les utilisateurs lors de la rotation  
- Conforme aux règles de nommage interne  

---

## 6. Dépendances

- Infrastructure disponible pour test  
- Accès aux coffres concernés  
- Rôle RBAC correctement attribué  
- Coordination avec l’équipe SIEM pour les alertes

---

## 7. Données de test / Données d’entrée

- Compte : `root@linuxprod01`  
- Coffre : `UNIX_ROOT_PROD`  
- Intervalle : 24h  
- Policy : `DefaultRotationTemplate`

---

## 8. Documentation attendue

- Diagramme de flux si nécessaire  
- Mise à jour du wiki technique  
- Fichier de configuration annoté  
- Lien vers la KB CyberArk (si applicable)

---

## 9. Risques ou impacts

- Risque de lockout si rotation échoue sans rollback  
- Impact en cas de désalignement des dépendances LDAP  
- Nécessite validation en comité de sécurité (pré-prod)

---

## 10. Notes / Annexes

- Lien vers demande initiale  
- Captures d’écran ou logs pertinents  
- Historique des incidents similaires

---

## Liens et ressources 

> “Cette story sera considérée comme terminée une fois tous les critères validés et une preuve de conformité fournie.”

## Critère Invest


| Critère      | Signification       | Question de vérification                         |
|--------------|---------------------|--------------------------------------------------|
| I - Indépendante | Déployable seule   | Bloque-t-elle d’autres stories ?                 |
| N - Négociable   | Flexible           | Le besoin est-il figé ou ouvert à discussion ?   |
| V - Valuable     | Apporte de la valeur | Impacte-t-elle la sécurité ou la conformité ?   |
| E - Estimable    | Évaluable          | L’équipe peut-elle l’estimer techniquement ?     |
| S - Small        | Petite              | Est-elle réalisable en moins d’un Sprint ?       |
| T - Testable     | Testable            | Peut-on vérifier le résultat via logs ou UI ?    |